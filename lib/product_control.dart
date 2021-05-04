import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          addProduct('Sweets food');
        },
        child: Text('Add Product'));
  }
}
