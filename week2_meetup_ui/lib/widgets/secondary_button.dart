import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final double deviceHeight;
  final double deviceWidth;
  final IconData icon;

  SecondaryButton({
    this.deviceHeight,
    this.deviceWidth,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: deviceHeight * 0.075,
        width: deviceWidth * 0.13,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
          border: Border.all(
            color: Theme.of(context).accentColor,
            width: deviceWidth * 0.008,
            style: BorderStyle.solid,
          ),
        ),
        child: Icon(
          icon,
          color: Theme.of(context).accentColor,
          size: (deviceWidth * 0.013) * (deviceHeight * 0.01),
        ),
      ),
    );
  }
}
