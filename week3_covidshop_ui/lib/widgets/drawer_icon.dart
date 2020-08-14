import 'package:flutter/material.dart';

class DrawerIcon extends StatelessWidget {
  final double deviceHeight;
  final double deviceWidth;

  DrawerIcon(
    this.deviceHeight,
    this.deviceWidth,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: deviceHeight * 0.02,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: deviceWidth * 0.04,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: deviceWidth * 0.05,
            height: deviceHeight * 0.005,
            color: Colors.amber[300],
          ),
          SizedBox(
            height: deviceHeight * 0.008,
          ),
          Container(
            width: deviceWidth * 0.09,
            height: deviceHeight * 0.005,
            color: Colors.white,
          ),
          SizedBox(
            height: deviceHeight * 0.008,
          ),
          Container(
            width: deviceWidth * 0.03,
            height: deviceHeight * 0.005,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
