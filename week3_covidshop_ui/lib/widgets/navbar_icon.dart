import 'package:flutter/material.dart';

class NavbarIcon extends StatefulWidget {
  final double deviceHeight;
  final double deviceWidth;
  double selectedScreen;
  final double index;
  final IconData icon;

  NavbarIcon({
    this.deviceHeight,
    this.deviceWidth,
    this.selectedScreen,
    this.index,
    this.icon,
  });

  @override
  _NavbarIconState createState() => _NavbarIconState();
}

class _NavbarIconState extends State<NavbarIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.deviceHeight * 0.055,
      width: widget.deviceWidth * 0.1,
      decoration: BoxDecoration(
        color: widget.selectedScreen == widget.index
            ? Colors.amber
            : Colors.grey[500],
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.icon,
            color: widget.selectedScreen == widget.index
                ? Colors.black
                : Colors.white,
          ),
        ],
      ),
    );
  }
}
