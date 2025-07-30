import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview/fetch_product_usecase.dart';
import 'package:interview/mock_api_service.dart';
import 'package:interview/product_item_widget.dart';
import 'package:interview/utils.dart';
import 'product_model.dart';
import 'api_service.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key, this.environment});
  final Environment? environment;
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final List<Product> _products = [];
  final bool _isLoading = true;
  final String? _error = null;

  late final FetchProductUsecase _fetchProductUsecase = FetchProductUsecase(
    productService:
        widget.environment == Environment.development
            ? MockApiService()
            : ApiService(),
  );

  @override
  void initState() {
    super.initState();
    _loadProducts();
  }

  void _loadProducts() async {
    try {
      final res = await _fetchProductUsecase();
      if (res.$2 == null) {
        if (mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Error: ${res.$1}')));
        }
        setState(() {
          _isLoading = false;
          _error = res.$1;
        });
        return;
      }
      _error = null;
      _products = res.$2 ?? [];
      _isLoading = false;
      
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(child: CupertinoActivityIndicator());
    } else if (_error != null) {
      return Center(child: Text('Error: $_error'));
    } else if (_products.isEmpty) {
      return const Center(child: Text('No products found.'));
    }
    return ListView.builder(
      itemCount: _products,
      itemBuilder: (context, index) {
        final product = _products[index];
        return ProductTile(
          title: product.title,
          price: product.price,
          rating: product.rating,
        );
      },
    );
  }
}
