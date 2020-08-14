import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Providers
import '../providers/products.dart';

// Widgets
import '../widgets/drawer_icon.dart';

// Models
import '../models/product.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    int index = 0;
    int selectedIndex = 0;

    final Products productsData = Provider.of<Products>(context);
    final List<Product> products = productsData.products;
    final List<String> types = productsData.types;

    final List<Widget> typeWidgets = [];

    types.forEach((type) {
      typeWidgets.add(
        Container(
          height: deviceHeight * 0.05,
          width: deviceWidth * 0.25,
          margin: EdgeInsets.symmetric(
            horizontal: deviceWidth * 0.018,
          ),
          decoration: BoxDecoration(
            color: selectedIndex == index ? Colors.white : Colors.grey[700],
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            type,
            style: TextStyle(
              color: selectedIndex == index ? Colors.black : Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      );
      index++;
    });

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        leading: DrawerIcon(deviceHeight, deviceWidth),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Home',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
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
        padding: EdgeInsets.symmetric(
          vertical: deviceHeight * 0.02,
          horizontal: deviceWidth * 0.045,
        ),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [...typeWidgets],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
