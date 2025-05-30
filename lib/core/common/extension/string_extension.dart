extension StringExtension on String {
  bool isValidEmail() => RegExp(
        r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
      ).hasMatch(this);

  //Capitalize first letter
  String get capitalizeFirstLetter {
    if (length == 1) {
      return toUpperCase();
    } else if (length < 1) {
      return '';
    } else {
      return this[0].toUpperCase() + substring(1);
    }
  }

  String get capitalizeFirstLetterAndRemoveUnderscores {
    if (isEmpty) return this;

    // Split by underscores and capitalize the first letter of each part
    return split('_')
        .map((String part) => part) // Reuse the capitalization method
        .join(' ')
        .capitalizeFirstLetter; // Join parts with spaces instead of underscores
  }

  String get removeUnderscores {
    if (isEmpty) return this;

    // Split by underscores and capitalize the first letter of each part
    return split('_')
        .map((String part) => part) // Reuse the capitalization method
        .join(' '); // Join parts with spaces instead of underscores
  }

  String get removeTrailingZeros {
    // Check if the number contains a decimal point
      String number = this;
    if (contains('.')) {
      // Remove trailing zeros after the decimal point
      number = number.replaceAll(RegExp(r'0+$'), '');

      number = number.replaceAll(RegExp(r'\.$'), '');
    }

    return number;
  }

}
