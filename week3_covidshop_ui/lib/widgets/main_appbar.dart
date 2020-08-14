import 'package:flutter/material.dart';

// Widgets
import './drawer_icon.dart';

class MainAppBar extends StatelessWidget {
  final double deviceHeight;
  final double deviceWidth;
  final String text;

  MainAppBar(
    this.deviceHeight,
    this.deviceWidth,
    this.text,
  );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).backgroundColor,
      elevation: 0,
      leading: DrawerIcon(deviceHeight, deviceWidth),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            text,
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
    );
  }
}
