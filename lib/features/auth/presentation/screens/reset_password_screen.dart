import 'package:flutter/material.dart';
import 'package:student_app/features/auth/presentation/widgets/decorated_page.dart';

import '../../../../core/core.dart';
import '../../bloc/authentication_bloc.dart';

@RoutePage()
class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key, required this.authenticationBloc});
  final AuthenticationBloc authenticationBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthenticationBloc>.value(
      value: authenticationBloc,
      child: const ResetPasswordView(),
    );
  }
}

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  late AuthenticationBloc _authenticationBloc;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late TextEditingController passwordTextEditingController;
  late FocusNode passwordFocusNode;
  late TextFieldControllerImpl passwordController;

  late TextEditingController confirmPasswordTextEditingController;
  late FocusNode confirmPasswordFocusNode;
  late TextFieldControllerImpl confirmPasswordController;

  late GlobalButtonController globalButtonController;
  late FocusNode submitButtonFocusNode;
  bool isObscure = true;
  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;

  @override
  void initState() {
    super.initState();
    _authenticationBloc = context.read<AuthenticationBloc>();
    passwordTextEditingController = TextEditingController();
    passwordFocusNode = FocusNode();
    passwordController = TextFieldControllerImpl('');

    confirmPasswordTextEditingController = TextEditingController();
    confirmPasswordFocusNode = FocusNode();
    confirmPasswordController = TextFieldControllerImpl('');

    globalButtonController = GlobalButtonController();
    submitButtonFocusNode = FocusNode();
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
                    const AuthenticationState.resetPasswordFailed()
                        .runtimeType ||
                current.runtimeType ==
                    const AuthenticationState.resetPasswordSucceed()
                        .runtimeType ||
                current.runtimeType ==
                    const AuthenticationState.loadingResetPassword()
                        .runtimeType) {
              return true;
            }
            return false;
          },
          listener: (BuildContext context, AuthenticationState state) {
            state.maybeWhen(
              loadingResetPassword: () {
                globalButtonController.changeToLoader();
              },
              resetPasswordFailed: (GeneralException? generalException) {
                globalButtonController.value = null;
                showSnackBar(
                  context: context,
                  message: generalException?.message,
                  isError: true,
                );
              },
              resetPasswordSucceed: (String? message) {
                FocusManager.instance.primaryFocus?.unfocus();
                globalButtonController.value = null;
                showSnackBar(context: context, message: 'تم تغيير كلمة المرور');
                context.router.replaceAll(<PageRouteInfo>[const BaseRoute()]);
              },
              orElse: () {},
            );
          },
          child: PopScope(
            onPopInvokedWithResult:
                (bool didPop, Object? result) => context.router.replaceAll(
                  <PageRouteInfo>[const BaseRoute()],
                ),
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height,

              child: DecoratedPage(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              context.maybePop();
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: context.colorScheme.surface,
                            ),
                          ),

                          AssetsManager.images.decoratedLogo.image(
                            width: ResponsiveUtils.responsiveSize(
                              context,
                              mobile: 88,
                              tablet: 120,
                              desktop: 120,
                            ),
                            height: ResponsiveUtils.responsiveSize(
                              context,
                              mobile: 88,
                              tablet: 120,
                              desktop: 120,
                            ),
                          ),
                          const SizedBox(width: 10),
                        ],
                      ),
                    ),
                    Expanded(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: context.theme.scaffoldBackgroundColor,
                          borderRadius: const BorderRadiusDirectional.only(
                            topEnd: Radius.circular(16),
                            topStart: Radius.circular(16),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                            vertical: 8,
                            horizontal: 40,
                          ),
                          child: SingleChildScrollView(
                            padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom,
                            ),
                            child: Form(
                              key: formKey,
                              autovalidateMode: _autoValidateMode,
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'نسيت كلمة المرور',
                                    style: context.bodyLarge?.copyWith(
                                      color: context.colorScheme.primary,
                                    ),
                                  ),
                                  const SizedBox(height: 70),
                                  Text(
                                    'ادخل كلمة المرور الجديدة',
                                    style: context.bodySmall,
                                  ),
                                  const SizedBox(height: 60),

                                  passwordTextField(),
                                  const SizedBox(height: 26),
                                  confirmPasswordTextField(),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
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

  Column passwordTextField() {
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '${LocaleKeys.password.tr()}:',
          style: context.bodySmall?.copyWith(fontWeight: FontWeight.w700),
        ),
        ValueListenableBuilder<String?>(
          valueListenable: passwordController,
          builder: (BuildContext context, String? value, Widget? child) {
            return TextInputWidget(
              isEmpty: value?.isEmpty ?? false,
              controller: passwordTextEditingController,
              focusNode: passwordFocusNode,
              nextFocusNode: confirmPasswordFocusNode,
              isPassword: true,
              fontColor: context.colorScheme.primary,

              toggleObscureText: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              onChanged: (String value) {
                passwordController.onTextChange(value);
              },
              obscureText: isObscure,
              validator:
                  (String? value) => validateInput(
                    value,

                    context,
                    <ValidationType>[ValidationType.password],
                  ),
              hintText: LocaleKeys.password.tr(),
            );
          },
        ),
      ],
    );
  }

  Column confirmPasswordTextField() {
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '${LocaleKeys.confirmPassword.tr()}:',
          style: context.bodySmall?.copyWith(fontWeight: FontWeight.w700),
        ),
        ValueListenableBuilder<String?>(
          valueListenable: confirmPasswordController,
          builder: (BuildContext context, String? value, Widget? child) {
            return TextInputWidget(
              isEmpty: value?.isEmpty ?? false,
              controller: confirmPasswordTextEditingController,
              focusNode: confirmPasswordFocusNode,
              nextFocusNode: submitButtonFocusNode,
              isPassword: true,
              fontColor: context.colorScheme.primary,

              toggleObscureText: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              onChanged: (String value) {
                confirmPasswordController.onTextChange(value);
              },
              obscureText: isObscure,
              validator:
                  (String? value) => validateInput(
                    value,
                    context,
                    password: passwordTextEditingController.text,
                    <ValidationType>[ValidationType.confirmPassword],
                  ),
              hintText: LocaleKeys.confirmPassword.tr(),
            );
          },
        ),
      ],
    );
  }

  Padding submitButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      child: GlobalButton(
        height: 65,
        controller: globalButtonController,
        focusNode: submitButtonFocusNode,
        onPressed: () {
          if (formKey.currentState!.validate()) {
            _authenticationBloc.add(
              AuthenticationEvent.resetPassword(
                password: passwordTextEditingController.text.trim(),
              ),
            );
          } else {
            setState(() {
              _autoValidateMode = AutovalidateMode.onUserInteraction;
            });
          }
        },
        child: Text(
          'إرسال',
          style: context.bodyLarge?.copyWith(
            color: context.theme.colorScheme.surface,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    passwordTextEditingController.dispose();
    passwordFocusNode.dispose();
    passwordController.dispose();

    confirmPasswordTextEditingController.dispose();
    confirmPasswordFocusNode.dispose();
    confirmPasswordController.dispose();

    globalButtonController.dispose();
    submitButtonFocusNode.dispose();
    super.dispose();
  }
}
