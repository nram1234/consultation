import 'package:consultation/net/abstract_json_resource.dart';

class LoginModel extends AbstractJsonResource{
  bool? status;
  String? errNum;
  String? msg;
  User? user;

  LoginModel({this.status, this.errNum, this.msg, this.user});

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errNum = json['errNum'];
    msg = json['msg'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['errNum'] = this.errNum;
    data['msg'] = this.msg;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? type;
  String? name;
  String? email;
  String? phone;
  String? gender;
  String? image;
  int? birthOfYear;
  String? additionalPhone;
  int? yearsOfExperience;
  String? education;
  String? experience;
  List<String>? educationCertificate;
  List<String>? experienceCertificate;
  String? subcategory;
  String? token;

  User(
      {this.id,
        this.type,
        this.name,
        this.email,
        this.phone,
        this.gender,
        this.image,
        this.birthOfYear,
        this.additionalPhone,
        this.yearsOfExperience,
        this.education,
        this.experience,
        this.educationCertificate,
        this.experienceCertificate,
        this.subcategory,
        this.token});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    gender = json['gender'];
    image = json['image'];
    birthOfYear = json['birth_of_year'];
    additionalPhone = json['additional_phone'];
    yearsOfExperience = json['years_of_experience'];
    education = json['education'];
    experience = json['experience'];
    educationCertificate = json['education_certificate'].cast<String>();
    experienceCertificate = json['experience_certificate'].cast<String>();
    subcategory = json['subcategory'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['gender'] = this.gender;
    data['image'] = this.image;
    data['birth_of_year'] = this.birthOfYear;
    data['additional_phone'] = this.additionalPhone;
    data['years_of_experience'] = this.yearsOfExperience;
    data['education'] = this.education;
    data['experience'] = this.experience;
    data['education_certificate'] = this.educationCertificate;
    data['experience_certificate'] = this.experienceCertificate;
    data['subcategory'] = this.subcategory;
    data['token'] = this.token;
    return data;
  }
}
