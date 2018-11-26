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

  Widget _buildProductList() {
    Widget productCards = Center(child:Text('No products found'));
        if ( products.length > 0 ) {
      productCards = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    }
    return productCards;
  }

    @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}