import 'package:flutter/cupertino.dart';

import '../../core.dart';

enum ValidationType {
  requiredField,
  phone,
  password,
  confirmPassword,
  oldPassword,
  email,
  name,
  maxLength,
  number,
  percentage,
  min,
  max,
}

String? validateInput(
  String? value,
  BuildContext context,
  List<ValidationType> validationTypes, {
  String? password,
  String? fieldName,
  int maxLength = 50,
  int? limit,
  Map<String, String>? externalErrors,
}) {
  final String input = value?.trim() ?? '';
  if ((externalErrors?.containsKey(fieldName) ?? false) &&
      externalErrors?[fieldName] != null) {
    return externalErrors![fieldName];
  }

  if (validationTypes.contains(ValidationType.requiredField)) {
    if (input.isEmpty) {
      return LocaleKeys.emptyField.tr();
    }
  }
  if (validationTypes.contains(ValidationType.password)) {
    if (!RegExp(
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',
    ).hasMatch(input)) {
      return "يجب ان تحتوي كلمة المرور على 8 محارف على الأٌقل أحرف صغيرة وكبيرة ورمز ورقم";
    }
  }
  if (validationTypes.contains(ValidationType.number)) {
    if ((int.tryParse(input) ?? 0) < 0) {
      return 'must be equal 0 or greater than 0';
    }
  }
  if (validationTypes.contains(ValidationType.percentage)) {
    final double? percentageValue = double.tryParse(input);
    if (percentageValue == null ||
        percentageValue < 0 ||
        percentageValue > 100) {
      return 'Percentage must be between 0 and 99';
    }
  }
  if (validationTypes.contains(ValidationType.confirmPassword)) {
    if (input != password) {
      return LocaleKeys.confirmPasswordError.tr();
    }
  }
  // if (validationTypes.contains(ValidationType.oldPassword)) {
  //   if (input == password) {
  //     return LocaleKeys.mustEnterNewPassword.tr();
  //   }
  // }
  // if (validationTypes.contains(ValidationType.name)) {
  //   // Updated regex: accepts Arabic letters or English letters in any case, with optional spaces
  //   if (!RegExp(r'^[\u0621-\u064A\u0660-\u0669a-zA-Z\s]+$').hasMatch(input)) {
  //     return LocaleKeys.fullNameRule.tr();
  //   }
  // }

  if (validationTypes.contains(ValidationType.maxLength)) {
    if (input.length > maxLength) {
      return LocaleKeys.maxLengthError.tr(args: <String>['$maxLength']);
    }
  }
  if (validationTypes.contains(ValidationType.min)) {
    return _validateMin(input, limit);
  }
  if (validationTypes.contains(ValidationType.max)) {
    return _validateMax(input, limit);
  }
  if (validationTypes.contains(ValidationType.phone)) {
    if (input.length != 10) {
      return LocaleKeys.phoneError.tr();
    }
  }
  if (validationTypes.contains(ValidationType.email)) {
    if (input.isNotEmpty && !input.isValidEmail()) {
      return LocaleKeys.emailError.tr();
    }
    return null;
  }
  return null;
}

String? _validateMin(String input, int? limit) {
  final int inputValue = int.tryParse(input) ?? 0;
  if (inputValue < (limit ?? 0)) {
    return 'The value must be at least $limit';
  }
  return null;
}

String? _validateMax(String input, int? limit) {
  final int inputValue = int.tryParse(input) ?? 0;
  if (inputValue > (limit ?? 0)) {
    return 'The value must be at most $limit';
  }
  return null;
}
