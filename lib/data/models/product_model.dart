class Product {
  final String? id;
  final String? nameEn;
  final String? nameAr;
  final String? descriptionEn;
  final String? descriptionAr;
  final String? numberOfViews;
  final String? categoryId;
  final String? sectionId;
  final String? createdAt;
  final String? updatedAt;
  final List<ColorModel?> colors;
  final List<SizeModel?> sizes;
  final List<Review?> reviews;

  Product({
    required this.id,
    required this.nameEn,
    required this.nameAr,
    required this.descriptionEn,
    required this.descriptionAr,
    required this.numberOfViews,
    required this.categoryId,
    this.sectionId,
    required this.createdAt,
    required this.updatedAt,
    required this.colors,
    required this.sizes,
    required this.reviews,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      nameEn: json['name_en'],
      nameAr: json['name_ar'],
      descriptionEn: json['description_en'],
      descriptionAr: json['description_ar'],
      numberOfViews: json['number_of_views'],
      categoryId: json['category_id'],
      sectionId: json['section_id'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      colors: (json['colors'] as List<dynamic>).map((item) => ColorModel.fromJson(item)).toList(),
      sizes: (json['sizes'] as List<dynamic>).map((item) => SizeModel.fromJson(item)).toList(),
      reviews: (json['reviews'] as List<dynamic>).map((item) => Review.fromJson(item)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name_en': nameEn,
      'name_ar': nameAr,
      'description_en': descriptionEn,
      'description_ar': descriptionAr,
      'number_of_views': numberOfViews,
      'category_id': categoryId,
      'section_id': sectionId,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'colors': colors.map((color) => color?.toJson()).toList(),
      'sizes': sizes.map((size) => size?.toJson()).toList(),
      'reviews': reviews.map((review) => review?.toJson()).toList(),
    };
  }
}

class ColorModel {
  String? id;
  String? sizeId;
  String? colorEn;
  String? colorAr;
  String? image;
  String? quantity;
  String? currentPrice;
  String? oldPrice;
  DateTime? createdAt;
  DateTime? updatedAt;

  ColorModel({
    this.id,
    this.sizeId,
    this.colorEn,
    this.colorAr,
    this.image,
    this.quantity,
    this.currentPrice,
    this.oldPrice,
    this.createdAt,
    this.updatedAt,
  });

  factory ColorModel.fromJson(Map<String, dynamic> json) {
    return ColorModel(
      id: json['id'],
      sizeId: json['size_id'],
      colorEn: json['color_en'],
      colorAr: json['color_ar'],
      image: json['image'],
      quantity: json['quantity'],
      currentPrice: json['current_price'],
      oldPrice: json['old_price'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'size_id': sizeId,
      'color_en': colorEn,
      'color_ar': colorAr,
      'image': image,
      'quantity': quantity,
      'current_price': currentPrice,
      'old_price': oldPrice,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
    };
  }
}

class Review {
  final String? id;
  final String? productId;
  final String? userId;
  final String? star;
  final String? createdAt;
  final String? updatedAt;

  Review({
    required this.id,
    required this.productId,
    required this.userId,
    required this.star,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      id: json['id'],
      productId: json['product_id'],
      userId: json['user_id'],
      star: json['star'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'product_id': productId,
      'user_id': userId,
      'star': star,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}
class SizeModel {
  final String? id;
  final String? productId;
  final String? sizeEn;
  final String? sizeAr;
  final String? quantity;
  final String? createdAt;
  final String? updatedAt;

  SizeModel({
    required this.id,
    required this.productId,
    required this.sizeEn,
    required this.sizeAr,
    required this.quantity,
    required this.createdAt,
    required this.updatedAt,
  });

  factory SizeModel.fromJson(Map<String, dynamic> json) {
    return SizeModel(
      id: json['id'],
      productId: json['product_id'],
      sizeEn: json['size_en'],
      sizeAr: json['size_ar'],
      quantity: json['quantity'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'product_id': productId,
      'size_en': sizeEn,
      'size_ar': sizeAr,
      'quantity': quantity,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}
