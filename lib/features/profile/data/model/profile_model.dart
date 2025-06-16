import 'package:student_app/core/common/models/speciality_model.dart';

class ProfileResults {
  final int code;
  final String message;
  final dynamic fieldsErrors;
  final User results;

  ProfileResults({
    required this.code,
    required this.message,
    this.fieldsErrors,
    required this.results,
  });

  factory ProfileResults.fromJson(Map<String, dynamic> json) {
    return ProfileResults(
      code: json['code'],
      message: json['message'],
      fieldsErrors: json['fields_errors'],
      results: User.fromJson(json['results']),
    );
  }
}

class User {
  final String id;
  final String phoneNumber;
  final bool phoneNumberVerified;
  final String email;
  final DateTime dateJoined;
  final DateTime firstLogin;
  final DateTime lastLogin;
  final bool isActive;
  final String fullName;
  final int type;
  final int gender;
  final String birthDate;
  final List<dynamic> groups;
  final List<dynamic> allPermissionsFullNames;
  final Student? student;
  final dynamic teacher;

  User({
    required this.id,
    required this.phoneNumber,
    required this.phoneNumberVerified,
    required this.email,
    required this.dateJoined,
    required this.firstLogin,
    required this.lastLogin,
    required this.isActive,
    required this.fullName,
    required this.type,
    required this.gender,
    required this.birthDate,
    required this.groups,
    required this.allPermissionsFullNames,
    this.student,
    this.teacher,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      phoneNumber: json['phone_number'],
      phoneNumberVerified: json['phone_number_verified'],
      email: json['email'],
      dateJoined: DateTime.parse(json['date_joined']),
      firstLogin: DateTime.parse(json['first_login']),
      lastLogin: DateTime.parse(json['last_login']),
      isActive: json['is_active'],
      fullName: json['full_name'],
      type: json['type'],
      gender: json['gender'],
      birthDate: json['birth_date'],
      groups: json['groups'] ?? [],
      allPermissionsFullNames: json['all_permissions_full_names'] ?? [],
      student:
          json['student'] != null ? Student.fromJson(json['student']) : null,
      teacher: json['teacher'], // You can create a Teacher class if needed
    );
  }
}

class Student {
  final String parentPhoneNumber;
  final Speciality? speciality;
  final int? grade;
  final String balance;

  Student({
    required this.parentPhoneNumber,
    this.speciality,
    this.grade,
    required this.balance,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      parentPhoneNumber: json['parent_phone_number'],
      speciality:
          json['speciality'] != null
              ? Speciality.fromJson(json['speciality'])
              : null,
      grade: json['grade'],
      balance: json['balance'],
    );
  }
}
