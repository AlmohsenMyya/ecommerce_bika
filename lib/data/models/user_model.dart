import 'dart:io';

class UserModel {
  final int? id;
  final String nameEn;
  final String? nameAr;
  final String usernameEn;
  final String? usernameAr;
  final String email;
  final String phoneNumber;
  final String? password;
  final String sexEn;
  final String sexAr;
  final String dateOfBirth;
  final File? image;
  final String? imageUrl;
  final String createdAt;
  final String updatedAt;

  UserModel({
     this.id,
    required this.nameEn,
    required this.nameAr,
    required this.usernameEn,
    required this.usernameAr,
    required this.email,
    required this.phoneNumber,
    required this.password,
    required this.sexEn,
    required this.sexAr,
    required this.dateOfBirth,
    this.image,
    this.imageUrl,
    required this.createdAt,
    required this.updatedAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      nameEn: json['name_en'],
      nameAr: json['name_ar'],
      usernameEn: json['username_en'],
      usernameAr: json['username_ar'],
      email: json['email'],
      phoneNumber: json['phone_number'],
      password: json['password'],
      sexEn: json['sex_en'],
      sexAr: json['sex_ar'],
      dateOfBirth: json['date_of_birth'],
      imageUrl: json['image'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      // 'id': id,
      'name_en': nameEn,
      'name_ar': nameAr,
      'username_en': usernameEn,
      'username_ar': usernameAr,
      'email': email      ,
      'phone_number': phoneNumber,
      'password': password,
      'sex_en': sexEn,
      'sex_ar': sexAr,
      'date_of_birth': dateOfBirth,
      // 'image': image,
      // 'created_at': createdAt,
      // 'updated_at': updatedAt,
    };
  }
}
