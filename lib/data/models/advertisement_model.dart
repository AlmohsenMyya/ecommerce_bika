class Advertisement {
  String? id;
  String? image;
  String? descriptionEn;
  String? descriptionAr;
  String? type;
  DateTime? expirationDate;
  DateTime? createdAt;
  DateTime? updatedAt;

  Advertisement({
    this.id,
    this.image,
    this.descriptionEn,
    this.descriptionAr,
    this.type,
    this.expirationDate,
    this.createdAt,
    this.updatedAt,
  });

  factory Advertisement.fromJson(Map<String, dynamic> json) {
    return Advertisement(
      id: json['id'],
      image: json['image'],
      descriptionEn: json['description_en'],
      descriptionAr: json['description_ar'],
      type: json['type'],
      expirationDate: DateTime.parse(json['expiration_date']),
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image': image,
      'description_en': descriptionEn,
      'description_ar': descriptionAr,
      'type': type,
      'expiration_date': expirationDate?.toIso8601String(),
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
    };
  }
}
