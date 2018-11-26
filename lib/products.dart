import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  //final only means we won't "change" products but we can
  // replace it and build will be called again
  final List <String> products;

  Products(this.products);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: products.map((element) => Card(
        child: Column(
          children: <Widget>[
            Image.asset('assets/food.jpg'),
            Text(element)
          ],
        ),
      ))
          .toList(),
    );
  }
}