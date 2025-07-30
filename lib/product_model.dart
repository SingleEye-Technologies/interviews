class Product {
  final int id;
  final String title;
  final double price;
  final String description;
  final double rating;
  final int ratingCount;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
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
        rating: rate.toDouble(),
        ratingCount: count,
      );
    } else if (json case {
      'id': int id,
      'name': String title,
      'price': num price,
      'description': String description,
      'category': String category,
      'image': String image,
      'rating': {'rating': num rating, 'count': int count},
    }) {
      return Product(
        id: id,
        title: title,
        price: price.toDouble(),
        description: description,
        rating: rating.toDouble(),
        ratingCount: count, // Default value for rating count
      );
    }
    throw FormatException('Invalid Product JSON: \$json');
  }
}
