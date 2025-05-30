class SignInParams {
  SignInParams({
    required this.phoneNumber,
    required this.password,
    required this.deviceId,
  });

  final String phoneNumber;
  final String password;
  final String deviceId;

  Map<String, dynamic> toJson() => <String, String>{
    'phone_number': "+963${phoneNumber.trim()}",
    'password': password.trim(),
    'device_id': deviceId,
  };
}
