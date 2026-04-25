class Product {
  final String id;
  final String categoryId;
  final String title;
  final String description;
  final String imageUrl;
  final double price;

  const Product({
    required this.id,
    required this.categoryId,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'].toString(),
      categoryId: json['category_id'].toString(),
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      imageUrl: json['image_url'] ?? '',
      price:
          (json['price'] is int)
              ? (json['price'] as int).toDouble()
              : (json['price'] ?? 0).toDouble(),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'category_id': categoryId,
    'title': title,
    'description': description,
    'image_url': imageUrl,
    'price': price,
  };
}
