import 'package:student_app/features/auth/data/models/models.dart';
import 'package:student_app/features/auth/data/models/specialties_model.dart';

class HomeModel {
  final HomeResults results;

  HomeModel({required this.results});

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      HomeModel(results: HomeResults.fromJson(json["results"]));
}

class HomeResults {
  final List<MaterialData>? materials;
  final List<TeacherData>? teachers;

  HomeResults({this.materials, this.teachers});

  factory HomeResults.fromJson(Map<String, dynamic> json) => HomeResults(
    materials: List<MaterialData>.from(
      json["materials"]!.map((dynamic x) => MaterialData.fromJson(x)),
    ),
    teachers: List<TeacherData>.from(
      json["teachers"]!.map((dynamic x) => TeacherData.fromJson(x)),
    ),
  );
}

class MaterialData {
  final String? id;
  final String? name;
  final SpecialtyResult? specialty;
  final String? image;
  final String? price;
  final bool? isAvailable;
  final List<dynamic>? units;

  MaterialData({
    this.id,
    this.name,
    this.specialty,
    this.image,
    this.price,
    this.isAvailable,
    this.units,
  });

  factory MaterialData.fromJson(Map<String, dynamic> json) => MaterialData(
    id: json["id"],
    name: json["name"],
    specialty:
        json["speciality"] == null
            ? null
            : SpecialtyResult.fromJson(json["speciality"]),
    image: json["image"],
    price: json["price"],
    isAvailable: json["is_available"],
    units:
        json["units"] == null
            ? []
            : List<dynamic>.from(json["units"]!.map((dynamic x) => x)),
  );
}

class TeacherData {
  final String? id;
  final UserData? user;
  final SpecialtyResult? specialty;
  final List<MaterialData>? materials;
  final String? image;
  final String? description;

  TeacherData({
    this.id,
    this.user,
    this.specialty,
    this.materials,
    this.image,
    this.description,
  });

  factory TeacherData.fromJson(Map<String, dynamic> json) => TeacherData(
    id: json["id"],
    user: json["user"] == null ? null : UserData.fromJson(json["user"]),
    specialty: SpecialtyResult.fromJson(json["speciality"]),
    materials: List<MaterialData>.from(
      json["materials"]!.map((dynamic x) => MaterialData.fromJson(x)),
    ),
    image: json["image"],
    description: json["description"],
  );
}
