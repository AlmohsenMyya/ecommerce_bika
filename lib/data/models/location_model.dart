class Location {
  String? id;
  String? userId;
  String? titleEn;
  String? titleAr;
  String? descriptionEn;
  String? descriptionAr;
  String? streetAddressEn;
  String? streetAddressAr;
  String? cityEn;
  String? cityAr;
  String? stateEn;
  String? stateAr;
  String? postalCode;
  String? countryEn;
  String? countryAr;
  String? phoneNumber;
  DateTime? createdAt;
  DateTime? updatedAt;

  Location({
    this.id,
    this.userId,
    this.titleEn,
    this.titleAr,
    this.descriptionEn,
    this.descriptionAr,
    this.streetAddressEn,
    this.streetAddressAr,
    this.cityEn,
    this.cityAr,
    this.stateEn,
    this.stateAr,
    this.postalCode,
    this.countryEn,
    this.countryAr,
    this.phoneNumber,
    this.createdAt,
    this.updatedAt,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      id: json['id'],
      userId: json['user_id'],
      titleEn: json['title_en'],
      titleAr: json['title_ar'],
      descriptionEn: json['description_en'],
      descriptionAr: json['description_ar'],
      streetAddressEn: json['street_address_en'],
      streetAddressAr: json['street_address_ar'],
      cityEn: json['city_en'],
      cityAr: json['city_ar'],
      stateEn: json['state_en'],
      stateAr: json['state_ar'],
      postalCode: json['postal_code'],
      countryEn: json['country_en'],
      countryAr: json['country_ar'],
      phoneNumber: json['phone_number'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'title_en': titleEn,
      'title_ar': titleAr,
      'description_en': descriptionEn,
      'description_ar': descriptionAr,
      'street_address_en': streetAddressEn,
      'street_address_ar': streetAddressAr,
      'city_en': cityEn,
      'city_ar': cityAr,
      'state_en': stateEn,
      'state_ar': stateAr,
      'postal_code': postalCode,
      'country_en': countryEn,
      'country_ar': countryAr,
      'phone_number': phoneNumber,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
    };
  }
}
