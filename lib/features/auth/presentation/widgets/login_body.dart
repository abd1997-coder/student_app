import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';
import 'package:student_app/features/auth/data/data.dart';

import '../../bloc/authentication_bloc.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody>
    with AutomaticKeepAliveClientMixin {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late AuthenticationBloc _authenticationBloc;
  late TextEditingController phoneNumberTextEditingController;
  late FocusNode phoneNumberFocusNode;
  late TextFieldControllerImpl phoneNumberController;

  late TextEditingController passwordTextEditingController;
  late FocusNode passwordFocusNode;
  late TextFieldControllerImpl passwordController;

  late GlobalButtonController globalButtonController;
  late FocusNode submitFocusNode;

  bool isObscure = true;

  @override
  void initState() {
    _authenticationBloc = context.read<AuthenticationBloc>();
    phoneNumberTextEditingController = TextEditingController();
    phoneNumberFocusNode = FocusNode();
    phoneNumberController = TextFieldControllerImpl('');

    passwordTextEditingController = TextEditingController();
    passwordFocusNode = FocusNode();
    passwordController = TextFieldControllerImpl('');

    globalButtonController = GlobalButtonController();
    submitFocusNode = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (BuildContext context, AuthenticationState state) {
        state.maybeWhen(
          loadingSignIn: () {
            FocusManager.instance.primaryFocus?.unfocus();
            globalButtonController.changeToLoader();
          },
          signInSucceed: () {
            globalButtonController.value = null;
            context.replaceRoute(const BaseRoute());
          },
          accountNeedVerify: () {
            globalButtonController.value = null;
            context.pushRoute(
              VerificationCodeRoute(authenticationBloc: _authenticationBloc),
            );
          },
          signInFailed: (GeneralException? generalException) {
            globalButtonController.value = null;
            showSnackBar(
              context: context,
              message: generalException?.message,
              isError: true,
            );
          },
          orElse: () {},
        );
      },
      child: Container(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 35),

        decoration: BoxDecoration(
          color: context.theme.scaffoldBackgroundColor,
          borderRadius: const BorderRadiusDirectional.only(
            topStart: Radius.circular(16),
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 15),

                Text(
                  '“ الرجاء إدخال بيانات تسجيل الدخول الخاصة بك للوصول إلى حسابك “ ',
                  textAlign: TextAlign.center,
                  style: context.bodySmall?.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 48),
                phoneNumberTextField(),
                const SizedBox(height: 23),
                passwordTextField(),

                const SizedBox(height: 30),
                GlobalButton(
                  height: 65,
                  controller: globalButtonController,
                  focusNode: submitFocusNode,
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      _authenticationBloc.add(
                        AuthenticationEvent.signIn(
                          signInParams: SignInParams(
                            phoneNumber: phoneNumberTextEditingController.text,
                            password: passwordTextEditingController.text,
                            deviceId: await getDeviceId(),
                          ),
                        ),
                      );
                    }
                  },
                  borderRadius: 50,
                  child: Text(
                    LocaleKeys.signIn.tr(),
                    style: context.bodyMedium?.copyWith(
                      color: context.colorScheme.surface,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                // GlobalButton(
                //   backgroundColor: context.theme.scaffoldBackgroundColor,
                //
                //   onPressed: () {
                //     if (formKey.currentState!.validate()) {
                //       _authenticationBloc.add(
                //         AuthenticationEvent.signIn(
                //           signInParams: SignInParams(
                //             phoneNumber: phoneNumberTextEditingController.text,
                //             password: passwordTextEditingController.text,
                //           ),
                //         ),
                //       );
                //     }
                //   },
                //   child: Text(
                //     'الدخول ك ضيف',
                //     style: context.titleSmall?.copyWith(
                //       fontWeight: FontWeight.w600,
                //       color: context.colorScheme.primary,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column phoneNumberTextField() {
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '${LocaleKeys.phoneNumber.tr()}:',
          style: context.bodySmall?.copyWith(fontWeight: FontWeight.w700),
        ),
        ValueListenableBuilder<String?>(
          valueListenable: phoneNumberController,
          builder: (BuildContext context, String? value, Widget? child) {
            return Directionality(
              textDirection: TextDirection.rtl,
              child: TextInputWidget(
                isEmpty: value?.isEmpty ?? false,
                controller: phoneNumberTextEditingController,
                focusNode: phoneNumberFocusNode,
                keyboardType: TextInputType.phone,

                maxLength: 10,
                prefixText: ' ',
                nextFocusNode: passwordFocusNode,
                counterBuilder: (
                  BuildContext context, {
                  int? currentLength,
                  bool? isFocused,
                  int? maxLength,
                }) {
                  return const SizedBox.shrink();
                },
                onChanged: (String value) {
                  phoneNumberController.onTextChange(value);
                },
                validator:
                    (String? value) => validateInput(
                      value,
                      context,
                      <ValidationType>[ValidationType.phone],
                    ),
                hintText: 'أدخل رقم هاتفك',
              ),
            );
          },
        ),
      ],
    );
  }

  Column passwordTextField() {
    return Column(
      spacing: 11,
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
              isPassword: true,

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
                    <ValidationType>[ValidationType.requiredField],
                  ),
              hintText: LocaleKeys.password.tr(),
            );
          },
        ),
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: TextButton(
            onPressed: () {
              context.pushRoute(
                ForgetPasswordOptionsRoute(
                  authenticationBloc: _authenticationBloc,
                ),
              );
            },
            child: Text(
              'هل نسيت كلمة المرور؟',
              style: context.labelLarge?.copyWith(fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;

  @override
  void dispose() {
    phoneNumberTextEditingController.dispose();
    phoneNumberFocusNode.dispose();
    phoneNumberController.dispose();

    passwordTextEditingController.dispose();
    passwordFocusNode.dispose();
    passwordController.dispose();

    globalButtonController.dispose();
    submitFocusNode.dispose();

    super.dispose();
  }
}
