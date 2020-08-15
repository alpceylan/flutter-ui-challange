import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Providers
import '../providers/products.dart';

// Widgets
import '../widgets/main_appbar.dart';
import '../widgets/type_container.dart';
import '../widgets/showcase_item.dart';
import '../widgets/sanitization_item.dart';

// Models
import '../models/product.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double selectedIndex = 0;
  bool showAll = false;

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    double index = 0;

    final Products productsData = Provider.of<Products>(context);
    final List<Product> products = productsData.products;
    final List<String> types = productsData.types;

    final List<Widget> typeWidgets = [];
    final List<Widget> showcaseWidgets = [];
    final List<Widget> sanitizationWidgets = [];

    types.forEach((type) {
      typeWidgets.add(
        GestureDetector(
          onTap: () {
            setState(() {
              switch (type) {
                case ('Vaccine'):
                  selectedIndex = 0;
                  break;
                case ('Sanitizer'):
                  selectedIndex = 1;
                  break;
                case ('Mask'):
                  selectedIndex = 2;
                  break;
                case ('Gloves'):
                  selectedIndex = 3;
                  break;
                case ('Disinfectant'):
                  selectedIndex = 4;
                  break;
                case ('Hat'):
                  selectedIndex = 5;
                  break;
              }
            });
          },
          child: TypeContainer(
            deviceHeight: deviceHeight,
            deviceWidth: deviceWidth,
            index: index,
            selectedIndex: selectedIndex,
            text: type,
          ),
        ),
      );
      if (index == types.length - 1) {
        index = 0;
      } else {
        index++;
      }
    });

    products.forEach((Product product) {
      if (product.showcase) {
        showcaseWidgets.add(
          ShowcaseItem(
            deviceHeight: deviceHeight,
            deviceWidth: deviceWidth,
            product: product,
          ),
        );
      }
    });

    if (!showAll) {
      sanitizationWidgets.add(
        SanitizationItem(
          deviceHeight: deviceHeight,
          deviceWidth: deviceWidth,
          title: products[0].title,
          imagePath: products[0].imagePath,
        ),
      );
      sanitizationWidgets.add(
        SanitizationItem(
          deviceHeight: deviceHeight,
          deviceWidth: deviceWidth,
          title: products[1].title,
          imagePath: products[1].imagePath,
        ),
      );
    } else {
      products.forEach((product) {
        sanitizationWidgets.add(
          SanitizationItem(
            deviceHeight: deviceHeight,
            deviceWidth: deviceWidth,
            title: product.title,
            imagePath: product.imagePath,
          ),
        );
      });
    }

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
      body: SingleChildScrollView(
        child: Container(
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
              SizedBox(
                height: deviceHeight * 0.05,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [...showcaseWidgets],
                ),
              ),
              SizedBox(
                height: deviceHeight * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sanitization',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showAll = !showAll;
                      });
                    },
                    child: Text(
                      showAll ? 'Close' : 'All',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: deviceHeight * 0.03,
              ),
              if (!showAll)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [...sanitizationWidgets],
                ),
              if (showAll)
                Expanded(
                  child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    mainAxisSpacing: deviceHeight * 0.02,
                    children: [...sanitizationWidgets],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
