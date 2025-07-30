
import 'package:interview/product_model.dart';

abstract interface class ProductService {
  Future<List<Product>> fetchProducts();
}