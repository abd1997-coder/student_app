import 'package:student_app/core/common/models/speciality_model.dart';
import 'package:student_app/core/common/models/teacher_model.dart';
import 'package:student_app/core/common/models/unit_model.dart';

class MaterialResponseModel {
  MaterialResults? results;

  MaterialResponseModel({this.results});

  MaterialResponseModel.fromJson(Map<String, dynamic> json) {
    results =
        json['results'] != null
            ? MaterialResults.fromJson(json['results'])
            : null;
  }
}

class MaterialResults {
  final String? id;
  final String? name;
  final Speciality? speciality;
  final String? image;
  final String? price;
  final bool? isAvailable;
  final List<Unit>? units;
  final int? videoCount;
  final List<TeacherModel>? teachers;

  MaterialResults({
    required this.id,
    required this.name,
    required this.speciality,
    required this.image,
    required this.price,
    required this.isAvailable,
    required this.units,
    required this.videoCount,
    required this.teachers,
  });

  factory MaterialResults.fromJson(Map<String, dynamic> json) {
    return MaterialResults(
      id: json['id'],
      name: json['name'],
      speciality: Speciality.fromJson(json['speciality']),
      image: json['image'],
      price: json['price'],
      isAvailable: json['is_available'],
      units: List<Unit>.from(json['units'].map((x) => Unit.fromJson(x))),
      videoCount: json['video_count'],
      teachers: List<TeacherModel>.from(
        json['teachers'].map((x) => TeacherModel.fromJson(x)),
      ),
    );
  }
}
