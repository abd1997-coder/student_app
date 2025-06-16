
class TeacherModel {
  String? id;
  TeacherInfro? user;
  String? image;
  String? description;

  TeacherModel({this.id, this.user, this.image, this.description});

  TeacherModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = json['user'] != null ? new TeacherInfro.fromJson(json['user']) : null;
    image = json['image'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['image'] = image;
    data['description'] = description;
    return data;
  }
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'user': user?.toMap(),
      'image': image,
      'description': description,
    };
  } 
}


class TeacherInfro {
   String? id;
  String? phoneNumber;
  String? email;
  String? fullName;
  int? type;

  TeacherInfro({this.id, this.phoneNumber, this.email, this.fullName, this.type});

  TeacherInfro.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    phoneNumber = json['phone_number'];
    email = json['email'];
    fullName = json['full_name'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['phone_number'] = phoneNumber;
    data['email'] = email;
    data['full_name'] = fullName;
    data['type'] = type;
    return data;
  }
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'phone_number': phoneNumber,
      'email': email,
      'full_name': fullName,
      'type': type,
    };
  }
}