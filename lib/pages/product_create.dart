import 'package:flutter/material.dart';

class ProductCreatePage extends StatelessWidget {
  // this is embedded in a TabBar, so just return the body of a page
  // - not a full Scaffold widget
  @override
  Widget build(BuildContext context) {
    return Center(
        child: RaisedButton(
            child: Text('Save'),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Center(
                      child: Text('Modal from bottom'),
                    );
                  });
            }));
  }
}
