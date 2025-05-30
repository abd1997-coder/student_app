class VerifyAccountParams {
  VerifyAccountParams({this.phoneNumber, this.deviceId, required this.code});

  final String? phoneNumber;
  final String code;
  final String? deviceId;

  Map<String, dynamic> toJson() => <String, String>{
    'phone_number': "+963${phoneNumber?.trim()}",
    'code': code.trim(),
    'device_id': deviceId ?? "",
  };
}
