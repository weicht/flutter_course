import 'package:flutter/material.dart';

import './products.dart';
import './product_create.dart';
import './product_list.dart';

class ProductAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            drawer: Drawer(
              child: Column(children: <Widget>[
                AppBar(
                  centerTitle: false,
                  automaticallyImplyLeading: false,
                  title: Text('Choose'),
                ),
                ListTile(
                  title: Text('All Products'),
                  onTap: () => Navigator.pushReplacementNamed(
                        context,
                        '/products',
                      ),
                ),
              ]),
            ),
            appBar: AppBar(
              title: Text('Product Admin'),
              bottom: TabBar(tabs: <Widget>[
                Tab(icon: Icon(Icons.create), text: 'Create Product'),
                Tab(icon: Icon(Icons.list), text: 'My Products')
              ]),
            ),
            body: TabBarView(
              //number of children widget MUST equal the length of the DefaultTabController
              // and number of Tab items
              // - note that the children widget/pages are rendered inline/embedded
              //   - not a replacement so they have to be consructed diff from a full page
              //     - directly return the body of a page, not a new Scaffold
              children: <Widget>[ProductCreatePage(), ProductListPage()],
            )));
  }
}
