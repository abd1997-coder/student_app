
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['image'] = this.image;
    data['description'] = this.description;
    return data;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['phone_number'] = this.phoneNumber;
    data['email'] = this.email;
    data['full_name'] = this.fullName;
    data['type'] = this.type;
    return data;
  }
}