import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:interview/api_service_interface.dart';
import 'package:interview/product_model.dart';

class MockApiService implements ProductService {

  final String _mockDataFile = 'assets/mock_data.dart'; 

  @override
  Future<List<Product>> fetchProducts() async {
    final jsonString = await rootBundle.loadString(_mockDataFile);
    final jsonList = json.decode(jsonString);
    return (jsonList as List).map((json) => Product.fromJson(json));
  }
}
