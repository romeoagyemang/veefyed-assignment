class Product {
  final String id;
  final String name;
  final String brand;
  final String status;
  final List<String> ingredients;
  final String imageUrl;
  final bool isVerified;

  Product({
    required this.id,
    required this.name,
    required this.brand,
    required this.status,
    required this.ingredients,
    required this.imageUrl,
    required this.isVerified,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      brand: json['brand'] ?? '',
      status: json['status'] ?? '',
      ingredients: List<String>.from(json['ingredients'] ?? []),
      imageUrl: json['imageUrl'] ?? '',
      isVerified: json['isVerified'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'brand': brand,
      'status': status,
      'ingredients': ingredients,
      'imageUrl': imageUrl,
      'isVerified': isVerified,
    };
  }
}
