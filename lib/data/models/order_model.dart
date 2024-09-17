class Order {
  final String? id;
  final String? userId;
  final String? locationId;
  final String? totalAmount;
  final String? status;
  final String? createdAt;
  final String? updatedAt;

  Order({
    required this.id,
    required this.userId,
    this.locationId,
    required this.totalAmount,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      id: json['id'],
      userId: json['user_id'],
      locationId: json['location_id'],
      totalAmount: json['total_amount'],
      status: json['status'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'location_id': locationId,
      'total_amount': totalAmount,
      'status': status,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}
