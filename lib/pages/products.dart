import 'package:flutter/material.dart';

import '../product_manager.dart';
import './product_admin.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              title: Text('Manage Products'),
              onTap: () => Navigator.pushReplacementNamed(
                    context,
                    '/admin',
                ),
            ),
          ]),
        ),
        appBar: AppBar(
          title: Text('Easy List'),
        ),
        body: ProductManager());
  }
}
