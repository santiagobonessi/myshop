import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  ProductItem(this.product);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(product.imageUrl),
    );
  }
}
