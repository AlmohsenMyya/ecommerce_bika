class Keyword {
  String? id;
  String? productId;
  String? keywordEn;
  String? keywordAr;
  DateTime? createdAt;
  DateTime? updatedAt;

  Keyword({
    this.id,
    this.productId,
    this.keywordEn,
    this.keywordAr,
    this.createdAt,
    this.updatedAt,
  });

  factory Keyword.fromJson(Map<String, dynamic> json) {
    return Keyword(
      id: json['id'],
      productId: json['product_id'],
      keywordEn: json['keyword_en'],
      keywordAr: json['keyword_ar'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'product_id': productId,
      'keyword_en': keywordEn,
      'keyword_ar': keywordAr,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
    };
  }
}
