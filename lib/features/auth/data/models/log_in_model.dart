

class AuthModel {
  final int? statusCode;
  final String? message;
  final UserData data;

  AuthModel({this.statusCode, this.message, required this.data});

  AuthModel copyWith({int? statusCode, String? message, UserData? data}) =>
      AuthModel(
        statusCode: statusCode ?? this.statusCode,
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
    statusCode: json["status_code"],
    message: json["message"],
    data: UserData.fromJson(json["results"]),
  );

  Map<String, dynamic> toJson() => <String, dynamic>{
    "status_code": statusCode,
    "message": message,
    "results": data.toMap(),
  };
}

class UserData {
  final String id;
  final String? email;
  final bool? emailVerified;
  final String? phoneNumber;
  final String? access;
  final String? refresh;
  final int? phoneNumberCountryCode;
  final String? phoneNumberRegionCode;
  final bool? phoneNumberVerified;
  final String? fullName;
  final String? firstName;
  final String? lastName;
  final DateTime? birthDate;
  final int? gender;
  final String? image;

  final String? resetPasswordCode;

  UserData({
    required this.id,
    this.email,
    this.emailVerified,
    this.phoneNumber,
    this.access,
    this.refresh,
    this.phoneNumberCountryCode,
    this.phoneNumberRegionCode,
    this.phoneNumberVerified,

    this.fullName,
    this.firstName,
    this.lastName,
    this.birthDate,
    this.gender,
    this.image,

    this.resetPasswordCode,
  });

  UserData copyWith({
    String? id,
    String? email,
    String? refresh,
    String? access,
    bool? emailVerified,
    String? phoneNumber,
    int? phoneNumberCountryCode,
    String? phoneNumberRegionCode,
    bool? phoneNumberVerified,

    String? fullName,
    String? firstName,
    String? lastName,
    DateTime? birthDate,
    int? gender,
    dynamic image,

    String? resetPasswordCode,
  }) => UserData(
    id: id ?? this.id,
    email: email ?? this.email,
    access: access ?? this.access,
    refresh: refresh ?? this.refresh,
    emailVerified: emailVerified ?? this.emailVerified,
    phoneNumber: phoneNumber ?? this.phoneNumber,
    phoneNumberCountryCode:
        phoneNumberCountryCode ?? this.phoneNumberCountryCode,
    phoneNumberRegionCode: phoneNumberRegionCode ?? this.phoneNumberRegionCode,
    phoneNumberVerified: phoneNumberVerified ?? this.phoneNumberVerified,

    fullName: fullName ?? this.fullName,
    firstName: firstName ?? this.firstName,
    lastName: lastName ?? this.lastName,
    birthDate: birthDate ?? this.birthDate,
    gender: gender ?? this.gender,
    image: image ?? this.image,
  );

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
    id: json["id"],
    email: json["email"],
    access: json["access"],
    refresh: json["refresh"],
    emailVerified: json["email_verified"],
    phoneNumber: json["phone_number"],
    phoneNumberCountryCode: json["phone_number_country_code"],
    phoneNumberRegionCode: json["phone_number_region_code"],
    phoneNumberVerified: json["phone_number_verified"],

    fullName: json["full_name"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    birthDate:
        json["birth_date"] == null ? null : DateTime.parse(json["birth_date"]),
    gender: json["gender"],
    image: json["image"],

    resetPasswordCode: json["reset_password_code"],
  );

  Map<String, dynamic> toMap() => <String, dynamic>{
    "id": id,
    "email": email,
    "access": access,
    "refresh": refresh,
    "email_verified": emailVerified,
    "phone_number": phoneNumber,
    "phone_number_country_code": phoneNumberCountryCode,
    "phone_number_region_code": phoneNumberRegionCode,
    "phone_number_verified": phoneNumberVerified,

    "full_name": fullName,
    "first_name": firstName,
    "last_name": lastName,
    "birth_date": birthDate?.toIso8601String(),
    "gender": gender,
    "image": image,

    "reset_password_code": resetPasswordCode,
  };
}
