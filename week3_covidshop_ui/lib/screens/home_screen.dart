import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Providers
import '../providers/products.dart';

// Widgets
import '../widgets/drawer_icon.dart';

// Models
import '../models/product.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    final Products productsData = Provider.of<Products>(context);
    final List<Product> products = productsData.products;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        leading: DrawerIcon(deviceHeight, deviceWidth),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Home', style: TextStyle(fontWeight: FontWeight.w500,),),
          ],
        ),
        actions: [
          Container(
            height: deviceHeight * 0.03,
            width: deviceWidth * 0.10,
            margin: EdgeInsets.symmetric(
              vertical: deviceHeight * 0.015,
              horizontal: deviceWidth * 0.04,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/female.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        height: deviceHeight,
        width: deviceWidth,
        alignment: Alignment.center,
        child: Text('Hello World!'),
      ),
    );
  }
}
