class EndPoint {
  EndPoint._();

  static const String baseUrl = 'http://164.92.227.199:8000/api/';

  static const String register = 'students/register/';

  static const String refreshToken = 'users/refresh/';

  static const String resetPassword = 'users/reset-password/';
  static const String changePassword = 'users/change-password/';

  static const String deleteAccount = 'users/delete/';

  static const String sendVerificationCode = 'users/send-code/';
  static const String verify = 'users/verify/';
  static const String login = 'users/login/';
  static const String loginByCode = 'users/code-login/';

  static const String updateFcm = 'fcm/devices/';

  static const String profile = 'users/profile/';
  // 954631777
  static const String grades = 'enums/grades/';
  static const String genders = 'enums/genders/';
  static const String specialties = 'statics/specialities/';
  static const String home = 'statics/home/';
  static const String materials = 'materials/materials/';

  static const String notifications = 'notification/my-notifications/';

  // buying
  static const String buyMaterial = 'buying/material/';
  static const String buyUnit = 'buying/unit/';
  static const String buyUnitattachment = 'buying/unitattachment/';
  static const String buyUnitvideo = 'buying/unitvideo/';
}
