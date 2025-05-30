String formatPhoneNumber(
    {required String phoneNumber, required int countryCode}) {
  // Convert country code to string and remove '+' from phone number if it exists
  String countryCodeStr = countryCode.toString();
  phoneNumber = phoneNumber.replaceFirst('+', '');

  // Ensure the phone number starts with the country code
  if (phoneNumber.startsWith(countryCodeStr)) {
    // Remove the country code part from the phone number
    String localNumber = phoneNumber.substring(countryCodeStr.length);

    // Format the local part of the phone number
    if (localNumber.length >= 7) {
      String part1 = localNumber.substring(
          0, localNumber.length - 7); // Optional initial digits
      String part2 = localNumber.substring(
          localNumber.length - 7, localNumber.length - 4); // Middle 3 digits
      String part3 =
          localNumber.substring(localNumber.length - 4); // Last 4 digits

      // Combine the parts with the country code
      return '+$countryCode $part1 $part2 $part3'.trim();
    }
  }

  // If the format doesn't match, return the phone number without changes
  return phoneNumber;
}
