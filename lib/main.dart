import 'package:flutter/material.dart';

//import 'dart:developer';
import 'package:flutter/rendering.dart';

import './pages/auth.dart';
import './pages/products.dart';
import './pages/product_admin.dart';

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
        home: AuthPage(),
      routes: {
        '/products': (BuildContext context) => ProductsPage(),
        '/admin': (BuildContext context) => ProductAdminPage(),
      },
    );
  }
}

//flutter always looks for the build() method to draw the widget
// - not necessary, but specify we are overriding the default "build" method
//   of StatelessWidget
//class _MyAppState extends State<MyApp> {
//}
