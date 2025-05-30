class SignUpParams {
  const SignUpParams({
    required this.grade,
    required this.deviceId,
    required this.gender,
    required this.birthDate,
    required this.mobile,
    required this.parentMobile,
    required this.fullName,
    required this.password,
    required this.specialty,
  });

  final String mobile;
  final String parentMobile;
  final int grade;
  final String fullName;
  final String password;
  final String deviceId;
  final String specialty;
  final int gender;
  final String birthDate;

  Map<String, dynamic> toJson() => <String, dynamic>{
    'phone_number': "+963${mobile.trim()}",
    'parent_phone_number': "+963${parentMobile.trim()}",
    'full_name': fullName.trim(),
    "password": password.trim(),
    "birth_date": birthDate,
    "grade": grade,
    "gender": gender,
    "device_id": deviceId.trim(),
    "speciality": specialty,
  };
}
