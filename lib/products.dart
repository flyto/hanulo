import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  //생성자  -- koo
  Products(this.products);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: products
            .map((element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('food.jpg'),
                      Text(element)
                    ],
                  ),
                ))
            .toList());
  }
}
