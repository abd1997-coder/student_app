import 'package:student_app/features/auth/data/models/models.dart';
import 'package:student_app/features/auth/data/models/specialties_model.dart';

class HomeModel {
  final HomeResults results;

  HomeModel({required this.results});

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      HomeModel(results: HomeResults.fromJson(json["results"]));

  Map<String, dynamic> toMap() => {
        'results': results.toMap(),
      };
}

class HomeResults {
  final List<MaterialData>? materials;
  final List<TeacherData>? teachers;

  HomeResults({this.materials, this.teachers});

  factory HomeResults.fromJson(Map<String, dynamic> json) => HomeResults(
    materials: List<MaterialData>.from(
      json["materials"]?.map((dynamic x) => MaterialData.fromJson(x)) ?? [],
    ),
    teachers: List<TeacherData>.from(
      json["teachers"]?.map((dynamic x) => TeacherData.fromJson(x)) ?? [],
    ),
  );

  Map<String, dynamic> toMap() => {
        'materials': materials?.map((x) => x.toMap()).toList(),
        'teachers': teachers?.map((x) => x.toMap()).toList(),
      };
}

class MaterialData {
  final String? id;
  final String? name;
  final SpecialtyResult? specialty;
  final String? image;
  final String? price;
  final bool? isAvailable;
  final List<dynamic>? units;
  final int? videosCount;

  MaterialData({
    this.id,
    this.name,
    this.specialty,
    this.image,
    this.price,
    this.isAvailable,
    this.units,
    this.videosCount,
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
    videosCount: json["video_count"],
  );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'price': price,
    };
  }
}

class TeacherData {
  final String? id;
  final UserData? user;
  final SpecialtyResult? specialty;
  final List<MaterialData>? materials;
  final String? image;
  final String? description;
  final String? fullName;
  TeacherData({
    this.id,
    this.user,
    this.specialty,
    this.materials,
    this.image,
    this.description,
    this.fullName,
  });

  factory TeacherData.fromJson(Map<String, dynamic> json) => TeacherData(
    id: json["id"],
    user: json["user"] == null ? null : UserData.fromJson(json["user"]),
    specialty: json["speciality"] == null
        ? null
        : SpecialtyResult.fromJson(json["speciality"]),
    materials: List<MaterialData>.from(
      json["materials"]?.map((dynamic x) => MaterialData.fromJson(x)) ?? [],
    ),
    image: json["image"],
    description: json["description"],
    fullName: UserData.fromJson(json["user"]).fullName,
  );

  Map<String, dynamic> toMap() => {
        'id': id,
        'user': user?.toMap(),
        'specialty': specialty?.toMap(),
        'materials': materials?.map((x) => x.toMap()).toList(),
        'image': image,
        'description': description,
        'full_name': fullName,
      };
}
