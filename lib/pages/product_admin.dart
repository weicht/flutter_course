import 'package:flutter/material.dart';

import './products.dart';

class ProductAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        drawer: Drawer(
          child: Column(
              children: <Widget>[
                AppBar(
                  centerTitle: false,
                  automaticallyImplyLeading: false,
                  title: Text('Choose'),
                ),
                ListTile(
                  title: Text('All Products'),
                  onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => ProductsPage()
                      )
                  ),
                ),
              ]),
        ),
        appBar: AppBar(
          title: Text('Product Admin'),
        ),
        body: Center(
          child: RaisedButton(
              child: Text('Save'),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => ProductsPage()),
                );
              }),
        ));
  }
}
