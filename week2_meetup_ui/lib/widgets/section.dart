import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final double deviceHeight;
  final double deviceWidth;
  final Color bgColor;
  final Color color;
  final Widget child;

  Section({
    this.deviceHeight,
    this.deviceWidth,
    this.bgColor,
    this.color,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: Container(
        height: deviceHeight * 0.25,
        width: deviceWidth,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(100),
          ),
        ),
        child: child,
      ),
    );
  }
}
