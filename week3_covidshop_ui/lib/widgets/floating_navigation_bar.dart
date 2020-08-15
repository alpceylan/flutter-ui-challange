import 'package:flutter/material.dart';

// Widgets
import '../widgets/navbar_icon.dart';

class FloatingNavigationBar extends StatefulWidget {
  final double deviceHeight;
  final double deviceWidth;
  double selectedScreen;

  FloatingNavigationBar({
    this.deviceHeight,
    this.deviceWidth,
    this.selectedScreen,
  });

  @override
  _FloatingNavigationBarState createState() => _FloatingNavigationBarState();
}

class _FloatingNavigationBarState extends State<FloatingNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: widget.deviceWidth * 0.16,
        right: widget.deviceWidth * 0.16,
        bottom: widget.deviceHeight * 0.04,
      ),
      padding: EdgeInsets.symmetric(
        vertical: widget.deviceHeight * 0.01,
        horizontal: widget.deviceWidth * 0.02,
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
                widget.selectedScreen = 0;
              });
            },
            child: NavbarIcon(
              deviceHeight: widget.deviceHeight,
              deviceWidth: widget.deviceWidth,
              selectedScreen: widget.selectedScreen,
              index: 0,
              icon: Icons.home,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.selectedScreen = 1;
              });
            },
            child: NavbarIcon(
              deviceHeight: widget.deviceHeight,
              deviceWidth: widget.deviceWidth,
              selectedScreen: widget.selectedScreen,
              index: 1,
              icon: Icons.favorite_border,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.selectedScreen = 2;
              });
            },
            child: NavbarIcon(
              deviceHeight: widget.deviceHeight,
              deviceWidth: widget.deviceWidth,
              selectedScreen: widget.selectedScreen,
              index: 2,
              icon: Icons.search,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.selectedScreen = 3;
              });
            },
            child: Stack(
              children: [
                NavbarIcon(
                  deviceHeight: widget.deviceHeight,
                  deviceWidth: widget.deviceWidth,
                  selectedScreen: widget.selectedScreen,
                  index: 3,
                  icon: Icons.shopping_basket,
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    height: widget.deviceHeight * 0.02,
                    width: widget.deviceWidth * 0.04,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: widget.selectedScreen == 3
                          ? Colors.black
                          : Colors.amber,
                      borderRadius: BorderRadius.all(
                        Radius.circular(3),
                      ),
                    ),
                    child: Text(
                      '15',
                      style: TextStyle(
                        fontSize: 8,
                        color: widget.selectedScreen == 3
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
