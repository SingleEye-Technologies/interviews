
import 'package:interview/api_service_interface.dart';
import 'package:interview/product_model.dart';
import 'package:interview/utils.dart';

class FetchProductUsecase {
  FetchProductUsecase({required this.productService});

  final ProductService productService;

  ApiServiceResultOrError<List<Product>?> call() async {
    try {
      final data = await productService.fetchProducts();
      return (null, data);
    } catch (e) {
      return (e.toString(), null);
    }
  }
}
