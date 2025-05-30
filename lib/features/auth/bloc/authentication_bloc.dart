import '../../../core/core.dart';
import '../data/data.dart';
import '../data/models/specialties_model.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(
    this._authRepository,
    this._userLocalDataSource,
    // this._baseRemoteDataSource,
  ) : super(const AuthenticationState.initial()) {
    on<AuthenticationEvent>((
      AuthenticationEvent event,
      Emitter<AuthenticationState> emit,
    ) async {
      await event.map(
        signIn: (_SignIn value) => signIn(event, emit),
        signInByCode: (_SignInByCode value) => signInByCode(event, emit),
        signUp: (_SignUp value) => signUp(event, emit),
        activateResendButton:
            (_ActivateResendButton event) => activateResendButton(event, emit),
        displayTimeOnUI: (_DisplayTimeOnUI event) {
          emit(
            AuthenticationState.remainingTimeForResend(
              remainingTime: event.remainingTime,
            ),
          );
        },
        verifyAccount: (_VerifyPhoneNumber value) => verifyAccount(event, emit),
        resendVerificationCodeOnPhoneNumber:
            (_ResendVerificationCodeOnPhoneNumber event) =>
                resendVerificationCodeOnPhoneNumber(event, emit),
        resetPassword: (_ResetPassword event) => resetPassword(event, emit),
        specialties: (_Specialties event) => specialties(event, emit),
      );
    });
  }

  final AuthRepository _authRepository;
  final UserLocalDataSource _userLocalDataSource;
  // final BaseRemoteDataSource _baseRemoteDataSource;

  String? verificationCodePhoneNumber;

  String? resetPasswordCode;
  bool redirectToResetPasswordPage = false;
  Timer? timer;

  String? currencyId = PrefData.currencyIdPhone;

  bool loginMethod = false;

  Future<void> signUp(
    AuthenticationEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    try {
      event as _$SignUpImpl;

      verificationCodePhoneNumber = null;
      emit(const AuthenticationState.loadingSignUp());
      final AuthModel response = await _authRepository.signUp(
        signUpParams: event.signUpParams,
      );

      verificationCodePhoneNumber = response.data.phoneNumber;
      PrefData.token = response.data.access;

      emit(const AuthenticationState.signUpSucceed());
    } on GeneralException catch (e) {
      emit(AuthenticationState.signUpFailed(generalException: e));
    }
  }

  Future<void> verifyAccount(
    AuthenticationEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    try {
      event as _$VerifyPhoneNumberImpl;

      emit(const AuthenticationState.loadingVerifyAccount());

      final AuthModel response = await _authRepository.verifyAccount(
        verifyAccountParams: event.verifyAccountParams,
      );
      PrefData.isSignedIn = true;
      await Future.wait(<Future<void>>[
        _userLocalDataSource.storeUser(response.data),
      ]);

      emit(const AuthenticationState.verifyAccountSucceed());
    } catch (e) {
      emit(
        AuthenticationState.verifyAccountFailed(
          generalException: LocalException(message: e.toString()),
        ),
      );
    }
  }

  Future<void> resendVerificationCodeOnPhoneNumber(
    AuthenticationEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    try {
      event as _$ResendVerificationCodeOnPhoneNumberImpl;
      emit(const AuthenticationState.loadingResendVerificationCode());

      await _authRepository.resendVerificationCodeOnPhoneNumber(
        phoneNumber: verificationCodePhoneNumber ??= event.phoneNumber,
      );

      if (event.toResetPassword) {
        redirectToResetPasswordPage = true;
      }
      emit(const AuthenticationState.resendVerificationCodeSucceed());
    } catch (e) {
      emit(
        AuthenticationState.resendVerificationCodeFailed(
          generalException: LocalException(message: e.toString()),
        ),
      );
    }
  }

  Future<void> signInByCode(
    AuthenticationEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    try {
      event as _$SignInByCodeImpl;

      emit(const AuthenticationState.loadingVerifyAccount());

      final AuthModel response = await _authRepository.signInByCode(
        verifyAccountParams: event.verifyAccountParams,
      );

      await Future.wait(<Future<void>>[
        // operationsOnUserProfile(response.data),
        _userLocalDataSource.storeAuthData(
          refreshToken: response.data.refresh,
          token: response.data.access,
          userData: response.data,
        ),
      ]);
      resetPasswordCode = response.data.resetPasswordCode;
      emit(const AuthenticationState.redirectToResetPasswordPage());
    } catch (e) {
      emit(
        AuthenticationState.verifyAccountFailed(
          generalException: LocalException(message: e.toString()),
        ),
      );
    }
  }

  Future<void> resetPassword(
    AuthenticationEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    try {
      event as _$ResetPasswordImpl;
      emit(const AuthenticationState.loadingResetPassword());

      await _authRepository.resetPassword(
        password: event.password,
        resetPasswordCode: resetPasswordCode!,
      );

      emit(const AuthenticationState.resetPasswordSucceed());
    } on GeneralException catch (e) {
      emit(AuthenticationState.signUpFailed(generalException: e));
    }
  }

  Future<void> specialties(
    AuthenticationEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    try {
      event as _$SpecialtiesImpl;
      emit(const AuthenticationState.loadingSpecialties());

      SpecialtyModel specialtyModel = await _authRepository.specialties();

      emit(
        AuthenticationState.specialtiesSucceed(
          specialties: specialtyModel.results,
        ),
      );
    } on GeneralException catch (e) {
      emit(AuthenticationState.specialtiesFailed(generalException: e));
    }
  }

  Future<void> activateResendButton(
    AuthenticationEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    const int waitTime = 30;
    int remainingTime = waitTime;
    if (true == timer?.isActive) {
      return;
    }
    timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) async {
      if (isClosed) {
        return;
      }
      if (remainingTime >= 0) {
        remainingTime--;
        add(AuthenticationEvent.displayTimeOnUI(remainingTime: remainingTime));
      } else {
        timer.cancel();
      }
    });
  }

  Future<void> signIn(
    AuthenticationEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    try {
      event as _$SignInImpl;
      emit(const AuthenticationState.loadingSignIn());

      final AuthModel response = await _authRepository.signIn(
        signInParams: event.signInParams,
      );
      loginMethod = true;

      if (response.data.phoneNumberVerified != true) {
        verificationCodePhoneNumber = response.data.phoneNumber;
        PrefData.token = response.data.access;
        PrefData.refreshToken = response.data.refresh;

        emit(const AuthenticationState.accountNeedVerify());
        return;
      }

      await Future.wait(<Future<void>>[
        // operationsOnUserProfile(response.data),
        _userLocalDataSource.storeAuthData(
          refreshToken: response.data.refresh,
          token: response.data.access,
          userData: response.data,
        ),
      ]);

      emit(const AuthenticationState.signInSucceed());
    } on GeneralException catch (e) {
      emit(AuthenticationState.signInFailed(generalException: e));
    }
  }

  // Future<List<Future<void>>> operationsOnUserProfile(UserData response) async {
  //   String fcmToken = await Managers.notificationManager.getFcmToken();

  //   bool needUpdateLanguage = languageCode != response.languageCode;

  //   bool needUpdateCurrency =
  //       currencyId != null && currencyId != response.currency.id;

  //   return <Future<void>>[
  //     if (needUpdateLanguage || needUpdateCurrency)
  //       _authRepository.updateUser(
  //         body: <String, String?>{
  //           if (needUpdateLanguage) "language_code": languageCode,
  //           if (needUpdateCurrency) "currency": currencyId,
  //         },
  //       ),
  //     if (currencyId == null)
  //       _userLocalDataSource.storeCurrency(response.currency),
  //     if (!PrefData.fcmTokenSent)
  //       _baseRemoteDataSource.saveFcmToken(fcmToken).then(
  //         (void value) {
  //           PrefData.fcmTokenSent = true;
  //         },
  //       ).onError(
  //         (Object? error, StackTrace stackTrace) {
  //           PrefData.fcmTokenSent = false;
  //         },
  //       )
  //   ];
  // }
}
