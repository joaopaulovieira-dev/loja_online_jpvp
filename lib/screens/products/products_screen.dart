import 'package:flutter/material.dart';
import 'package:loja_online_jpvp/common/custom_drawer/custom_drawer.dart';
import 'package:loja_online_jpvp/models/products_manager.dart';
import 'package:loja_online_jpvp/screens/products/components/product_list_tile.dart';
import 'package:provider/provider.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: const Text('Produtos'),
        centerTitle: true,
      ),
      body: Consumer<ProductManager>(
        builder: (_, productManager, __) {
          return ListView.builder(
              padding: const EdgeInsets.all(4),
              itemCount: productManager.allProducts.length,
              itemBuilder: (_, index) {
                return ProductListTile(productManager.allProducts[index]);
              });
        },
      ),
    );
  }
}
