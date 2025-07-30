class Product {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String imageUrl;
  final double rating;
  final int ratingCount;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.imageUrl,
    required this.rating,
    required this.ratingCount,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    if (json case {
      'id': int id,
      'title': String title,
      'price': num price,
      'description': String description,
      'category': String category,
      'image': String image,
      'rating': {'rate': num rate, 'count': int count},
    }) {
      return Product(
        id: id,
        title: title,
        price: price.toDouble(),
        description: description,
        category: category,
        imageUrl: image,
        rating: rate.toDouble(),
        ratingCount: count,
      );
    } else if (json case {
      'id': int id,
      'product_name': String title,
      'product_price': num price,
      'product_description': String description,
      'product_category': String category,
      'product_image': String image,
      'rating': {'rating': num rating, 'count': int count},
    }) {
      return Product(
        id: id,
        title: title,
        price: price.toDouble(),
        description: description,
        category: category,
        imageUrl: image,
        rating: rating.toDouble(),
        ratingCount: count, // Default value for rating count
      );
    }
    throw FormatException('Invalid Product JSON: \$json');
  }
}
