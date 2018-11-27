import 'package:flutter/material.dart';
import 'dart:async';

//import '../product_manager.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductPage(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        //return false so we don't get errors when looking for value back in caller
        Navigator.pop(context, false);
        //need to return a Future value.  It will do a pop back in the caller
        // if we returned true.  So, we return false instead so we dont try to
        // pop() on the main page.
        return Future.value(false);
      },
      child: Scaffold(
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
    ),);
  }
}
