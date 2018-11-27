import 'package:flutter/material.dart';

import './pages/product.dart';

class Products extends StatelessWidget {
  //final only means we won't "change" products but we can
  // replace it and build will be called again
  final List<Map<String, String>> products;
  final Function deleteProduct;

  Products(this.products, {this.deleteProduct}) {
    print('[Products Widget] Constructor');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
        child: Column(
      children: <Widget>[
        Image.asset('assets/food.jpg'),
        Text(products[index]['title']),
        ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[FlatButton(
              child: Text('Details'),
              onPressed: () => Navigator.push<bool>(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => ProductPage(
                          products[index]['title'], products[index]['image'])
                  )
              ).then((bool value) {
                if(value){
                  deleteProduct(index);
                }
              }),
            )
            ],
        ),
      ],
    ));
  }

  Widget _buildProductList() {
//    Widget productCards = Center(child:Text('No products found'));
    Widget productCards = Container();
    if (products.length > 0) {
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
