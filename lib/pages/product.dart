import 'package:flutter/material.dart';

import '../product_manager.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductPage(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imageUrl),
            Container(
                padding: EdgeInsets.all(10.0), child: Text('on prod page')),
            Container(
                padding: EdgeInsets.all(10.0),
                child: RaisedButton(
                  child: Text('DELETE'),
                  onPressed: () => Navigator.pop(context, true),
                ))
          ]),
    );
  }
}
