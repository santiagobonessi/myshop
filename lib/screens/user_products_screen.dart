import 'package:flutter/material.dart';
import 'package:my_shop/screens/edit_product_screen.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';
import '../widgets/app_drawer.dart';
import '../widgets/user_product_item.dart';

class UserProductsScreen extends StatelessWidget {
  static const routeName = '/user-products';

  const UserProductsScreen();

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Products'),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pushNamed(EditProductScreen.routeName),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              children: [
                UserProductItem(
                  id: productsData.items[index].id,
                  title: productsData.items[index].title,
                  imageUrl: productsData.items[index].imageUrl,
                ),
                Divider(),
              ],
            );
          },
          itemCount: productsData.items.length,
        ),
      ),
    );
  }
}