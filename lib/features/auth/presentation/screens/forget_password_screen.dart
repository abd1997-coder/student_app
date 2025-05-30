import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../bloc/authentication_bloc.dart';
import '../widgets/decorated_page.dart';

@RoutePage()
class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key, required this.authenticationBloc});
  final AuthenticationBloc authenticationBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthenticationBloc>(
      create: (BuildContext context) => getIt<AuthenticationBloc>(),
      child: const ForgetPasswordView(),
    );
  }
}

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  late AuthenticationBloc _authenticationBloc;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late TextEditingController phoneNumberTextEditingController;
  late FocusNode phoneNumberFocusNode;
  late TextFieldControllerImpl phoneNumberController;

  late GlobalButtonController globalButtonController;
  late FocusNode submitFocusNode;

  @override
  void initState() {
    _authenticationBloc = context.read<AuthenticationBloc>();
    phoneNumberTextEditingController = TextEditingController();
    phoneNumberFocusNode = FocusNode();
    phoneNumberController = TextFieldControllerImpl('');

    globalButtonController = GlobalButtonController();
    submitFocusNode = FocusNode();
    super.initState();
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
            final List<Type> validStates = <Type>[
              const AuthenticationState.resendVerificationCodeFailed()
                  .runtimeType,
              const AuthenticationState.resendVerificationCodeSucceed()
                  .runtimeType,
              const AuthenticationState.loadingResendVerificationCode()
                  .runtimeType,
            ];
            return validStates.contains(current.runtimeType);
          },
          listener: (BuildContext context, AuthenticationState state) {
            state.maybeWhen(
              loadingResendVerificationCode:
                  () => globalButtonController.changeToLoader(),
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
                FocusManager.instance.primaryFocus?.unfocus();
                globalButtonController.value = null;
                showSnackBar(context: context, message: 'تم إرسال الرمز');
                context.pushRoute(
                  VerificationCodeRoute(
                    authenticationBloc: _authenticationBloc,
                  ),
                );
              },
              orElse: () {},
            );
          },
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
                        child: Form(
                          key: formKey,
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
                                'ادخل الرقم ليتم ارسال رمز التأكيد عليه',
                                style: context.bodySmall,
                              ),
                              const SizedBox(height: 60),

                              phoneNumberTextField(),
                            ],
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
        bottomSheet: submitButton(),
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
              textDirection: TextDirection.ltr,
              child: TextInputWidget(
                isEmpty: value?.isEmpty ?? false,
                controller: phoneNumberTextEditingController,
                focusNode: phoneNumberFocusNode,
                keyboardType: TextInputType.phone,
                onChanged: (String value) {
                  phoneNumberController.onTextChange(value);
                },
                maxLength: 9,
                prefixText: '+963',
                counterBuilder: (
                  BuildContext context, {
                  int? currentLength,
                  bool? isFocused,
                  int? maxLength,
                }) {
                  return const SizedBox.shrink();
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

  Padding submitButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      child: GlobalButton(
        height: 65,
        controller: globalButtonController,
        focusNode: submitFocusNode,
        onPressed: () {
          if (formKey.currentState!.validate()) {
            _authenticationBloc.add(
              AuthenticationEvent.resendVerificationCodeOnPhoneNumber(
                toResetPassword: true,
                phoneNumber: phoneNumberTextEditingController.text.trim(),
              ),
            );
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
    phoneNumberTextEditingController.dispose();
    phoneNumberFocusNode.dispose();
    phoneNumberController.dispose();

    globalButtonController.dispose();
    submitFocusNode.dispose();
    super.dispose();
  }
}
