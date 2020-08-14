import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Providers
import '../providers/products.dart';

// Widgets
import '../widgets/main_appbar.dart';
import '../widgets/type_container.dart';

// Models
import '../models/product.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    double index = 0;
    double selectedIndex = 0;

    final Products productsData = Provider.of<Products>(context);
    final List<Product> products = productsData.products;
    final List<String> types = productsData.types;

    final List<Widget> typeWidgets = [];

    types.forEach((type) {
      typeWidgets.add(
        TypeContainer(
          deviceHeight: deviceHeight,
          deviceWidth: deviceWidth,
          index: index,
          selectedIndex: selectedIndex,
          text: type,
        ),
      );
      index++;
    });

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: PreferredSize(
        child: MainAppBar(
          deviceHeight,
          deviceWidth,
          'Home',
        ),
        preferredSize: Size.fromHeight(
          deviceHeight * 0.09,
        ),
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
