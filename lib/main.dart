import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './product_manager.dart';

//must be called "main" for flutter to build for you
//void main() {
//  runApp(MyApp());
//}
void main() {
//  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

//StatelessWidget is not for dynamic "internal" data changing changing
// - only calls build() once.  Can not use internal data
//StatefulWidget can dynamically change
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.purple
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Easy List'),
            ),
            body: ProductManager(startingProduct: 'Food Tester')));
  }
}

//flutter always looks for the build() method to draw the widget
// - not necessary, but specify we are overriding the default "build" method
//   of StatelessWidget
//class _MyAppState extends State<MyApp> {
//}
