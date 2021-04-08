import 'package:flutter/material.dart';
import 'package:loja_online_jpvp/models/product.dart';
import 'package:loja_online_jpvp/screens/edit_product/components/images_form.dart';

class EditProductScreen extends StatelessWidget {
  const EditProductScreen(this.product);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar Anúncio'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          ImagesForm(product),
        ],
      ),
    );
  }
}
