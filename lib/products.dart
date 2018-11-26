import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  //final only means we won't "change" products but we can
  // replace it and build will be called again
  final List<String> products;

  Products([this.products = const []]) {
    print('[Products Widget] Constructor');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
        child: Column(
      children: <Widget>[Image.asset('assets/food.jpg'), Text(products[index])],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: products.length,
    );
//      (
//      children: products.map((element) => Card(
//        child: Column(
//          children: <Widget>[
//            Image.asset('assets/food.jpg'),
//            Text(element)
//          ],
//        ),
//      ))
//          .toList(),
//    );
  }
}
