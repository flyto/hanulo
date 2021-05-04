import 'package:flutter/material.dart';
import './products.dart';
import './product_control.dart';

// ignore: must_be_immutable
class ProductManager extends StatefulWidget {
  String startingProduct;

  ProductManager(this.startingProduct) {
    print('1:ProductsManager widget constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('2:ProductsManager State create');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    print('3:ProductsManager State init');
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldwidget) {
    print('5:ProductsManager State did update');
    super.didUpdateWidget(oldwidget);
  }

  void _addProducts(String product) {

    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('4:ProductsManager widget build');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0), //margin
          child: ProductControl(_addProducts),
      ),
      Products(_products)
    ]);
  }
}
