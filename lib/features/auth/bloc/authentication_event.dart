part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.signIn({
    required SignInParams signInParams,
  }) = _SignIn;

  const factory AuthenticationEvent.signUp({
    required SignUpParams signUpParams,
  }) = _SignUp;

  const factory AuthenticationEvent.verifyAccount({
    required VerifyAccountParams verifyAccountParams,
  }) = _VerifyPhoneNumber;

  const factory AuthenticationEvent.signInByCode({
    required VerifyAccountParams verifyAccountParams,
  }) = _SignInByCode;

  const factory AuthenticationEvent.resendVerificationCodeOnPhoneNumber({
    required String phoneNumber,
    @Default(false) bool toResetPassword,
  }) = _ResendVerificationCodeOnPhoneNumber;

  const factory AuthenticationEvent.activateResendButton() =
      _ActivateResendButton;

  const factory AuthenticationEvent.displayTimeOnUI({
    required int remainingTime,
  }) = _DisplayTimeOnUI;

  const factory AuthenticationEvent.resetPassword({required String password}) =
      _ResetPassword;
  const factory AuthenticationEvent.specialties() = _Specialties;
}
