import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final double deviceHeight;
  final double deviceWidth;
  final IconData icon;

  MainButton({
    this.deviceHeight,
    this.deviceWidth,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: deviceHeight * 0.09,
        width: deviceWidth * 0.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(200),
          ),
          color: Colors.white,
          border: Border.all(
            color: Theme.of(context).accentColor,
            style: BorderStyle.solid,
            width: deviceWidth * 0.001,
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
