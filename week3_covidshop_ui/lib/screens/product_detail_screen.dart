import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: deviceHeight,
        width: deviceWidth,
        alignment: Alignment.center,
        child: Text('Hello World!'),
      ),
    );
  }
}
