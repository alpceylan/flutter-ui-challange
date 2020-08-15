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
  double selectedScreen = 0;
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
      extendBody: true,
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(
          left: deviceWidth * 0.16,
          right: deviceWidth * 0.16,
          bottom: deviceHeight * 0.04,
        ),
        padding: EdgeInsets.symmetric(
          vertical: deviceHeight * 0.01,
          horizontal: deviceWidth * 0.02,
        ),
        decoration: BoxDecoration(
          color: Colors.grey[800].withOpacity(0.8),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedScreen = 0;
                });
              },
              child: Container(
                height: deviceHeight * 0.055,
                width: deviceWidth * 0.1,
                decoration: BoxDecoration(
                  color: selectedScreen == 0 ? Colors.amber : Colors.grey[500],
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: selectedScreen == 0 ? Colors.black : Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedScreen = 1;
                });
              },
              child: Container(
                height: deviceHeight * 0.055,
                width: deviceWidth * 0.1,
                decoration: BoxDecoration(
                  color: selectedScreen == 1 ? Colors.amber : Colors.grey[500],
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: selectedScreen == 1 ? Colors.black : Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedScreen = 2;
                });
              },
              child: Container(
                height: deviceHeight * 0.055,
                width: deviceWidth * 0.1,
                decoration: BoxDecoration(
                  color: selectedScreen == 2 ? Colors.amber : Colors.grey[500],
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search,
                      color: selectedScreen == 2 ? Colors.black : Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedScreen = 3;
                });
              },
              child: Stack(
                children: [
                  Container(
                    height: deviceHeight * 0.055,
                    width: deviceWidth * 0.1,
                    decoration: BoxDecoration(
                      color:
                          selectedScreen == 3 ? Colors.amber : Colors.grey[500],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_basket,
                          color:
                              selectedScreen == 3 ? Colors.black : Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      height: deviceHeight * 0.02,
                      width: deviceWidth * 0.04,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color:
                            selectedScreen == 3 ? Colors.black : Colors.amber,
                        borderRadius: BorderRadius.all(
                          Radius.circular(3),
                        ),
                      ),
                      child: Text(
                        '15',
                        style: TextStyle(
                          fontSize: 8,
                          color:
                              selectedScreen == 3 ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
