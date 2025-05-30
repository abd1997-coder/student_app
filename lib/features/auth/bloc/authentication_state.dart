part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _AuthenticationInitial;

  // Sign in
  const factory AuthenticationState.loadingSignIn() =
      _AuthenticationLoadingSignIn;

  const factory AuthenticationState.signInSucceed() =
      _AuthenticationSignInSucceed;

  const factory AuthenticationState.signInFailed({
    @Default(null) GeneralException? generalException,
  }) = _AuthenticationSignInFailed;

  const factory AuthenticationState.accountNeedVerify() =
      _AuthenticationAccountNeedVerify;

  // Sign up
  const factory AuthenticationState.loadingSignUp() =
      _AuthenticationLoadingSignUp;

  const factory AuthenticationState.signUpSucceed() =
      _AuthenticationSignUpSucceed;

  const factory AuthenticationState.signUpFailed({
    @Default(null) GeneralException? generalException,
  }) = _AuthenticationSignUpFailed;

  // Verify Account
  const factory AuthenticationState.loadingVerifyAccount() =
      _AuthenticationLoadingVerifyAccount;

  const factory AuthenticationState.verifyAccountSucceed() =
      _AuthenticationVerifyAccountSucceed;

  const factory AuthenticationState.redirectToResetPasswordPage() =
      _AuthenticationRedirectToResetPasswordPage;

  const factory AuthenticationState.redirectToProofIdentityPage() =
      _AuthenticationRedirectToProofIdentityPage;

  const factory AuthenticationState.redirectToProofIdentityPageFromLogin() =
      _AuthenticationRedirectToProofIdentityPageFromLogin;

  const factory AuthenticationState.verifyAccountFailed({
    @Default(null) GeneralException? generalException,
  }) = _AuthenticationVerifyAccountFailed;

  // Resend Verification code
  const factory AuthenticationState.loadingResendVerificationCode() =
      _AuthenticationLoadingResendVerificationCode;

  const factory AuthenticationState.resendVerificationCodeSucceed({
    @Default(null) String? message,
  }) = _AuthenticationResendVerificationCodeSucceed;

  const factory AuthenticationState.resendVerificationCodeFailed({
    @Default(null) GeneralException? generalException,
  }) = _AuthenticationResendVerificationCodeFailed;

  const factory AuthenticationState.remainingTimeForResend({
    @Default(0) int? remainingTime,
  }) = _AuthenticationRemainingTimeForResend;

  // Forget Password
  const factory AuthenticationState.loadingResetPassword() =
      _AuthenticationLoadingResetPassword;

  const factory AuthenticationState.resetPasswordSucceed({
    @Default(null) String? message,
  }) = _AuthenticationResetPasswordSucceed;

  const factory AuthenticationState.resetPasswordFailed({
    @Default(null) GeneralException? generalException,
  }) = _AuthenticationResetPasswordFailed;

  // specialties
  const factory AuthenticationState.loadingSpecialties() =
      _AuthenticationLoadingSpecialties;

  const factory AuthenticationState.specialtiesSucceed({
    @Default(<SpecialtyResult>[]) List<SpecialtyResult> specialties,
  }) = _AuthenticationSpecialtiesSucceed;

  const factory AuthenticationState.specialtiesFailed({
    @Default(null) GeneralException? generalException,
  }) = _AuthenticationSpecialtiesFailed;
}
