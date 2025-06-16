import 'package:student_app/core/common/models/speciality_model.dart';
import 'package:student_app/core/common/models/teacher_model.dart';
import 'package:student_app/core/common/models/video_model.dart';

class Unit {
  String? id;
  String? name;
  Speciality? speciality;
  String? image;
  String? price;
  bool? isAvailable;
  List<Unit>? units;
  int? videoCount;
  List<TeacherModel>? teachers;
  bool isExpanded = false;
  List<VideoModel>? videos;
  Unit({
    this.id,
    this.name,
    this.speciality,
    this.image,
    this.price,
    this.isAvailable,
    this.units,
    this.videoCount,
    this.teachers,
    this.isExpanded = false,
    this.videos,
  });

  Unit.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    speciality =
        json['speciality'] != null
            ? Speciality.fromJson(json['speciality'])
            : null;
    image = json['image'];
    price = json['price'];
    isAvailable = json['is_available'];
    if (json['units'] != null) {
      units = <Unit>[];
      json['units'].forEach((v) {
        units!.add(Unit.fromJson(v));
      });
    }
    videoCount = json['video_count'];
    if (json['teachers'] != null) {
      teachers = <TeacherModel>[];
      json['teachers'].forEach((v) {
        teachers!.add(TeacherModel.fromJson(v));
      });
    }
    if (json['videos'] != null) {
      videos = <VideoModel>[];
      json['videos'].forEach((v) {
        videos!.add(VideoModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'speciality': speciality?.toMap(),
      'image': image,
      'price': price,
      'is_available': isAvailable,
      'units': units?.map((unit) => unit.toMap()).toList(),
      'video_count': videoCount,
      'teachers': teachers?.map((teacher) => teacher.toJson()).toList(),
      'videos': videos?.map((video) => video.toMap()).toList(),
    };
  }
}
