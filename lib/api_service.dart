import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:interview/api_service_interface.dart';
import 'product_model.dart';

class ApiService implements ProductService {
  static const _baseUrl = 'https://fakestoreapi.com/products';

  @override
  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(_baseUrl));
    if (response.statusCode == 200) {
      final jsonList = jsonDecode(response.body);
      return (jsonList as List).map((e) => Product.fromJson(e as Map<String, dynamic>)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
