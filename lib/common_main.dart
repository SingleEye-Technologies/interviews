import 'package:flutter/material.dart';
import 'package:interview/utils.dart';
import '/product_list_view.dart';

void commonMain(Environment environment) {
  runApp(MyApp(env: environment));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.env});
  final Environment env;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Demo',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(title: Text('Products')),
        body: ProductList(),
      ),
    );
  }
}
