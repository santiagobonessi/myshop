import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';
  // final Product product;

  ProductDetailScreen();

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    // get product object
    return Scaffold(
      appBar: AppBar(
        title: Text('product.title'),
      ),
    );
  }
}
