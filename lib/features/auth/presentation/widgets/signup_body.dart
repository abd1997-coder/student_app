import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:student_app/core/core.dart';
import 'package:student_app/features/auth/bloc/authentication_bloc.dart';
import 'package:student_app/features/auth/data/params/sign_up_params.dart';
import 'package:student_app/features/auth/presentation/widgets/date_of_birth_widget.dart';
import 'package:student_app/features/auth/presentation/widgets/specialty_list_widget.dart';

import '../../data/auth_repository.dart';
import '../../data/models/enum_model.dart';

class SignupBody extends StatefulWidget {
  const SignupBody({super.key});

  @override
  State<SignupBody> createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody>
    with AutomaticKeepAliveClientMixin {
  late AuthenticationBloc _authenticationBloc;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Map<String, String> externalErrors = <String, String>{};
  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;

  late TextEditingController nameTextEditingController;
  late FocusNode nameFocusNode;
  late TextFieldControllerImpl nameController;

  late TextEditingController phoneNumberTextEditingController;
  late FocusNode phoneNumberFocusNode;
  late TextFieldControllerImpl phoneNumberController;

  late TextEditingController parentPhoneNumberTextEditingController;
  late FocusNode parentPhoneNumberFocusNode;
  late TextFieldControllerImpl parentPhoneNumberController;

  late TextEditingController passwordTextEditingController;
  late FocusNode passwordFocusNode;
  late TextFieldControllerImpl passwordController;

  late TextEditingController confirmPasswordTextEditingController;
  late FocusNode confirmPasswordFocusNode;
  late TextFieldControllerImpl confirmPasswordController;

  late GlobalButtonController globalButtonController;
  late FocusNode submitFocusNode;

  String? birthDate;
  EnumResult? gender;
  EnumResult? gradeResult;
  bool isObscure = true;

  @override
  void initState() {
    _authenticationBloc = context.read<AuthenticationBloc>();
    nameTextEditingController = TextEditingController();
    nameFocusNode = FocusNode();
    nameController = TextFieldControllerImpl('');

    phoneNumberTextEditingController = TextEditingController();
    phoneNumberFocusNode = FocusNode();
    phoneNumberController = TextFieldControllerImpl('');

    parentPhoneNumberTextEditingController = TextEditingController();
    parentPhoneNumberFocusNode = FocusNode();
    parentPhoneNumberController = TextFieldControllerImpl('');

    passwordTextEditingController = TextEditingController();
    passwordFocusNode = FocusNode();
    passwordController = TextFieldControllerImpl('');

    confirmPasswordTextEditingController = TextEditingController();
    confirmPasswordFocusNode = FocusNode();
    confirmPasswordController = TextFieldControllerImpl('');

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
          loadingSignUp: () => globalButtonController.changeToLoader(),
          signUpFailed: (GeneralException? generalException) {
            globalButtonController.value = null;
            externalErrors.addAll(
              generalException?.errors ?? <String, String>{},
            );
            formKey.currentState?.validate();
            _autoValidateMode = AutovalidateMode.onUserInteraction;
            if (generalException?.message.isNotEmpty ?? false) {
              showSnackBar(
                context: context,
                message: generalException?.message,
                isError: true,
              );
            }
          },
          signUpSucceed: () {
            globalButtonController.value = null;
            context.pushRoute(
              VerificationCodeRoute(
                authenticationBloc: context.read<AuthenticationBloc>(),
              ),
            );
          },
          orElse: () {},
        );
      },
      child: Container(
        color: context.theme.scaffoldBackgroundColor,
        child: Container(
          margin: EdgeInsets.all(1.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            // color: Colors.black,
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsetsDirectional.symmetric(
                    horizontal: 8.w,
                    vertical: 1.h,
                  ),

                  decoration: BoxDecoration(
                    color: context.theme.scaffoldBackgroundColor,
                    borderRadius: const BorderRadiusDirectional.only(
                      topEnd: Radius.circular(16),
                    ),
                  ),
                  child: Form(
                    autovalidateMode: _autoValidateMode,
                    key: formKey,
                    child: Column(
                      children: <Widget>[
                        nameTextField(),
                        SizedBox(height: 1.h),
                        phoneNumberTextField(),
                        SizedBox(height: 1.h),
                        parentPhoneNumberTextField(),
                        SizedBox(height: 1.h),
                        DateOfBirthWidget(
                          onChange: (DateTime p0) {
                            setState(() {
                              birthDate = DateFormat('yyyy-MM-dd').format(p0);
                            });
                          },
                        ),
                        SizedBox(height: 1.h),
                        selectGenders(),
                        SizedBox(height: 1.h),
                        selectGrades(),
                        SizedBox(height: 1.h),
                        passwordTextField(),
                        SizedBox(height: 1.h),
                        confirmPasswordTextField(),
                        SizedBox(height: 1.h),
                      ],
                    ),
                  ),
                ),
                Material(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: context.theme.scaffoldBackgroundColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.2),
                          blurRadius: 6.px,
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 1.h),
                        submitButton(),

                        const SizedBox(height: 17),
                        Text.rich(
                          TextSpan(
                            children: <InlineSpan>[
                              TextSpan(
                                text: 'بإنشائك الحساب يعني موافقتك على',
                                style: context.labelLarge,
                              ),
                              TextSpan(
                                text: ' شروط الاستخدام ',
                                style: context.labelLarge?.copyWith(
                                  color: context.colorScheme.primary,
                                ),
                              ),
                              TextSpan(text: ' و ', style: context.labelLarge),
                              TextSpan(
                                text: ' سياسة الخصوصية ',
                                style: context.labelLarge?.copyWith(
                                  color: context.colorScheme.primary,
                                ),
                              ),
                              TextSpan(
                                text: 'الخاصة بنا',
                                style: context.labelLarge,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 3.h),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column nameTextField() {
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '${LocaleKeys.name.tr()}:',
          style: context.bodySmall?.copyWith(fontWeight: FontWeight.w700),
        ),
        ValueListenableBuilder<String?>(
          valueListenable: nameController,
          builder: (BuildContext context, String? value, Widget? child) {
            return TextInputWidget(
              isEmpty: value?.isEmpty ?? false,
              controller: nameTextEditingController,
              focusNode: nameFocusNode,
              nextFocusNode: phoneNumberFocusNode,
              fontColor: context.colorScheme.primary,
              onChanged: (String value) {
                nameController.onTextChange(value);
              },

              validator:
                  (String? value) => validateInput(
                    value,
                    fieldName: 'full_name',
                    externalErrors: externalErrors,
                    context,
                    <ValidationType>[ValidationType.requiredField],
                  ),
              hintText: 'ما هو أٍسمك؟',
            );
          },
        ),
      ],
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
                maxLength: 10,
                prefixText: ' ',
                counterBuilder: (
                  BuildContext context, {
                  int? currentLength,
                  bool? isFocused,
                  int? maxLength,
                }) {
                  return const SizedBox.shrink();
                },
                nextFocusNode: parentPhoneNumberFocusNode,
                fontColor: context.colorScheme.primary,
                keyboardType: TextInputType.phone,
                onChanged: (String value) {
                  phoneNumberController.onTextChange(value);
                },

                validator:
                    (String? value) => validateInput(
                      value,
                      context,
                      fieldName: 'phone_number',
                      externalErrors: externalErrors,
                      <ValidationType>[
                        ValidationType.phone,
                        ValidationType.requiredField,
                      ],
                    ),
                hintText: 'أدخل رقم هاتفك',
              ),
            );
          },
        ),
      ],
    );
  }

  Column parentPhoneNumberTextField() {
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'رقم هاتف الأهل:',
          style: context.bodySmall?.copyWith(fontWeight: FontWeight.w700),
        ),
        ValueListenableBuilder<String?>(
          valueListenable: parentPhoneNumberController,
          builder: (BuildContext context, String? value, Widget? child) {
            return Directionality(
              textDirection: TextDirection.rtl,
              child: TextInputWidget(
                isEmpty: value?.isEmpty ?? false,

                controller: parentPhoneNumberTextEditingController,
                focusNode: parentPhoneNumberFocusNode,
                maxLength: 10,
                prefixText: '',
                counterBuilder: (
                  BuildContext context, {
                  int? currentLength,
                  bool? isFocused,
                  int? maxLength,
                }) {
                  return const SizedBox.shrink();
                },
                fontColor: context.colorScheme.primary,
                keyboardType: TextInputType.phone,
                onChanged: (String value) {
                  parentPhoneNumberController.onTextChange(value);
                },

                validator:
                    (String? value) => validateInput(
                      value,
                      context,
                      fieldName: 'parent_phone_number',
                      externalErrors: externalErrors,
                      <ValidationType>[
                        ValidationType.phone,
                        ValidationType.requiredField,
                      ],
                    ),
                hintText: 'أدخل رقم هاتف الأهل',
              ),
            );
          },
        ),
      ],
    );
  }

  Column selectGenders() {
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'الجنس:',
          style: context.bodySmall?.copyWith(fontWeight: FontWeight.w700),
        ),
        SearchableDDL<EnumResult>(
          autoValidateMode: _autoValidateMode,
          validator:
              (EnumResult? value) => validateInput(
                value?.label,
                context,
                <ValidationType>[ValidationType.requiredField],
                fieldName: 'gender',
                externalErrors: externalErrors,
              ),
          onChanged: (EnumResult? value) {
            // setState(() {
            gender = value;
            // });
          },
          hintText: 'اختر',
          asyncItems: (String filter, LoadProps? loadProps) async {
            EnumModel gendersModel = await getIt<AuthRepository>().ganders();
            return gendersModel.results;
          },
        ),
      ],
    );
  }

  Column selectGrades() {
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'الصف:',
          style: context.bodySmall?.copyWith(fontWeight: FontWeight.w700),
        ),
        SearchableDDL<EnumResult>(
          autoValidateMode: _autoValidateMode,

          hintText: 'اختر',
          validator:
              (EnumResult? value) => validateInput(
                value?.label,
                context,
                <ValidationType>[ValidationType.requiredField],
                fieldName: 'grade',
                externalErrors: externalErrors,
              ),
          onChanged: (EnumResult? value) {
            //  setState(() {
            gradeResult = value;
            // });
          },
          asyncItems: (String filter, LoadProps? loadProps) async {
            EnumModel gradesModel = await getIt<AuthRepository>().grades();
            return gradesModel.results;
          },
        ),
      ],
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
                    fieldName: 'password',
                    externalErrors: externalErrors,
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
              nextFocusNode: submitFocusNode,
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

  GlobalButton submitButton() {
    return GlobalButton(
      height: 65,
      controller: globalButtonController,
      focusNode: submitFocusNode,
      onPressed: () {
        if (externalErrors.isNotEmpty) {
          externalErrors = <String, String>{};
          formKey.currentState!.reset();
        }
        if (formKey.currentState!.validate()) {
          showDialog(
            context: context,
            builder:
                (BuildContext ctx) => Dialog(
                  // Give the dialog rounded corners
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: BlocProvider<AuthenticationBloc>.value(
                    value:
                        _authenticationBloc
                          ..add(const AuthenticationEvent.specialties()),
                    child: SpecialtyListWidget(
                      onTap: (String id) async {
                        _authenticationBloc.add(
                          AuthenticationEvent.signUp(
                            signUpParams: SignUpParams(
                              grade: int.parse(gradeResult!.value),
                              deviceId: await getDeviceId(),
                              gender: int.parse(gender!.value),
                              birthDate: birthDate!,
                              mobile: phoneNumberTextEditingController.text,
                              parentMobile:
                                  parentPhoneNumberTextEditingController.text,
                              fullName: nameTextEditingController.text,
                              password: passwordTextEditingController.text,
                              specialty: id,
                            ),
                          ),
                        );
                        if (mounted) {
                          context.maybePop();
                        }
                      },
                    ),
                  ),
                ),
          );
        } else {
          setState(() {
            _autoValidateMode = AutovalidateMode.onUserInteraction;
          });
        }
      },
      child: Text(
        "إنشاء الحساب",
        style: context.bodyMedium?.copyWith(
          color: context.colorScheme.surface,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  @override
  void dispose() {
    nameTextEditingController.dispose();
    nameFocusNode.dispose();
    nameController.dispose();

    phoneNumberTextEditingController.dispose();
    phoneNumberFocusNode.dispose();
    phoneNumberController.dispose();

    parentPhoneNumberTextEditingController.dispose();
    parentPhoneNumberFocusNode.dispose();
    parentPhoneNumberController.dispose();

    passwordTextEditingController.dispose();
    passwordFocusNode.dispose();
    passwordController.dispose();

    confirmPasswordTextEditingController.dispose();
    confirmPasswordFocusNode.dispose();
    confirmPasswordController.dispose();

    globalButtonController.dispose();
    submitFocusNode.dispose();
    super.dispose();
  }
}
