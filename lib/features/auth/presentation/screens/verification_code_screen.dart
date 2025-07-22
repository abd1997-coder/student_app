import 'package:flutter/material.dart';
import 'package:student_app/features/auth/presentation/widgets/otp_field.dart';

import '../../../../core/core.dart';
import '../../bloc/authentication_bloc.dart';
import '../../data/data.dart';
import '../widgets/question_with_action.dart';

@RoutePage()
class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({super.key, required this.authenticationBloc});
  final AuthenticationBloc authenticationBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthenticationBloc>.value(
      value: authenticationBloc,
      child: const VerificationCodeView(),
    );
  }
}

class VerificationCodeView extends StatefulWidget {
  const VerificationCodeView({super.key});

  @override
  State<VerificationCodeView> createState() => _VerificationCodeViewState();
}

class _VerificationCodeViewState extends State<VerificationCodeView> {
  late AuthenticationBloc _authenticationBloc;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late TextEditingController otpTextEditingController;
  late FocusNode otpFocusNode;

  late GlobalButtonController globalButtonController;
  late FocusNode submitButtonFocusNode;

  @override
  void initState() {
    super.initState();
    _authenticationBloc = context.read<AuthenticationBloc>();
    otpTextEditingController = TextEditingController();
    otpFocusNode = FocusNode();
    globalButtonController = GlobalButtonController();
    submitButtonFocusNode = FocusNode();
    otpFocusNode.requestFocus();
  }

  @override
  void dispose() {
    otpTextEditingController.dispose();
    otpFocusNode.dispose();
    globalButtonController.dispose();
    submitButtonFocusNode.dispose();
    if (PrefData.isSignedIn == false) {
      getIt<AppManagerCubit>().deleteUser();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocListener<AuthenticationBloc, AuthenticationState>(
          listenWhen: (
            AuthenticationState previous,
            AuthenticationState current,
          ) {
            if (current.runtimeType ==
                    const AuthenticationState.loadingVerifyAccount()
                        .runtimeType ||
                current.runtimeType ==
                    const AuthenticationState.redirectToResetPasswordPage()
                        .runtimeType ||
                current.runtimeType ==
                    const AuthenticationState.redirectToProofIdentityPage()
                        .runtimeType ||
                current.runtimeType ==
                    const AuthenticationState.verifyAccountSucceed()
                        .runtimeType ||
                current.runtimeType ==
                    const AuthenticationState.verifyAccountFailed()
                        .runtimeType ||
                current.runtimeType ==
                    const AuthenticationState.loadingResendVerificationCode()
                        .runtimeType ||
                current.runtimeType ==
                    const AuthenticationState.resendVerificationCodeSucceed()
                        .runtimeType ||
                current.runtimeType ==
                    const AuthenticationState.resendVerificationCodeFailed()
                        .runtimeType) {
              return true;
            }
            return false;
          },
          listener: (BuildContext context, AuthenticationState state) {
            state.maybeWhen(
              loadingVerifyAccount:
                  () => globalButtonController.changeToLoader(),
              verifyAccountFailed: (GeneralException? generalException) {
                globalButtonController.value = null;
                showSnackBar(
                  context: context,
                  message: generalException?.message,
                  isError: true,
                );
              },
              verifyAccountSucceed: () {
                globalButtonController.value = null;
                showSnackBar(
                  context: context,
                  message: 'اهلا بك في تطبيق نجاحي',
                );
                context.router.replaceAll(<PageRouteInfo>[const BaseRoute()]);
              },
              resendVerificationCodeFailed: (
                GeneralException? generalException,
              ) {
                globalButtonController.value = null;
                showSnackBar(
                  context: context,
                  message: generalException?.message,
                  isError: true,
                );
              },
              resendVerificationCodeSucceed: (String? message) {
                globalButtonController.value = null;
                showSnackBar(context: context, message: 'تم إرسال الكود');
                context.read<AuthenticationBloc>().add(
                  const AuthenticationEvent.activateResendButton(),
                );
              },
              redirectToResetPasswordPage: () {
                globalButtonController.value = null;
                context.pushRoute(
                  ResetPasswordRoute(authenticationBloc: _authenticationBloc),
                );
              },

              orElse: () {},
            );
          },
          child: PopScope(
            onPopInvokedWithResult: (bool didPop, Object? result) {
              if (_authenticationBloc.redirectToResetPasswordPage) {
                context.maybePop();
              } else {
                context.router.replaceAll(<PageRouteInfo>[const BaseRoute()]);
              }
            },
            child: Center(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: <Widget>[
                    const SizedBox(height: 50),
                    AssetsManager.images.otpLogo.image(width: 140, height: 140),
                    const SizedBox(height: 10),
                    Text(
                      'تأكيد رقم الهاتف',
                      style: context.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 70),

                    Text.rich(
                      TextSpan(
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'لقد قمنا بإرسال رمز التحقق إلى الرقم   ',

                            style: context.bodySmall?.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const WidgetSpan(
                            child: SizedBox(width: Dimensions.space4),
                          ),
                          TextSpan(
                            text:
                                _authenticationBloc.verificationCodePhoneNumber,
                            style: context.bodySmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: context.theme.colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),

                    OtpFieldWidget(
                      controller: otpTextEditingController,
                      focusNode: otpFocusNode,
                      onCompleted: (String p0) {
                        verifyAccount();
                      },
                    ),
                    Spacer(),
                    BlocBuilder<AuthenticationBloc, AuthenticationState>(
                      buildWhen: (
                        AuthenticationState previous,
                        AuthenticationState current,
                      ) {
                        if (current.runtimeType ==
                            const AuthenticationState.remainingTimeForResend()
                                .runtimeType) {
                          return true;
                        }
                        return false;
                      },
                      builder: (
                        BuildContext context,
                        AuthenticationState state,
                      ) {
                        final int remainingTime =
                            state.whenOrNull(
                              remainingTimeForResend:
                                  (int? remainingTime) => (remainingTime),
                            ) ??
                            -1;
                        return QuestionWithActionWidget(
                          question: 'لم يتم إرسال الرمز ؟',
                          action:
                              remainingTime > 1
                                  ? 'إعادة الارسال بعد ${remainingTime.toString()} ثانية'
                                  : 'إعادة الإرسال',

                          onPressed:
                              remainingTime >= 0
                                  ? () {}
                                  : resendVerificationCode,
                        );
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomSheet: submitButton(),
      ),
    );
  }

  Padding submitButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: GlobalButton(
        height: 65,
        controller: globalButtonController,
        focusNode: submitButtonFocusNode,
        onPressed: () {
          verifyAccount();
        },
        child: Text(
          'تأكيد',
          style: context.bodyLarge?.copyWith(
            color: context.theme.colorScheme.surface,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  void verifyAccount() async {
    if (formKey.currentState!.validate()) {
      if (!_authenticationBloc.redirectToResetPasswordPage) {
        _authenticationBloc.add(
          AuthenticationEvent.verifyAccount(
            verifyAccountParams: VerifyAccountParams(
              code: otpTextEditingController.text,
              phoneNumber: _authenticationBloc.verificationCodePhoneNumber,
            ),
          ),
        );
      } else {
        _authenticationBloc.add(
          AuthenticationEvent.signInByCode(
            verifyAccountParams: VerifyAccountParams(
              phoneNumber: _authenticationBloc.verificationCodePhoneNumber,
              code: otpTextEditingController.text,
              deviceId: await getDeviceId(),
            ),
          ),
        );
      }
    }
  }

  void resendVerificationCode() {
    _authenticationBloc.add(
      AuthenticationEvent.resendVerificationCodeOnPhoneNumber(
        phoneNumber: _authenticationBloc.verificationCodePhoneNumber!,
      ),
    );
  }
}
