import 'package:flutter/material.dart';

class SanitizationItem extends StatelessWidget {
  final double deviceHeight;
  final double deviceWidth;
  final String title;
  final String imagePath;

  SanitizationItem({
    this.deviceHeight,
    this.deviceWidth,
    this.title,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceHeight * 0.3,
      width: deviceWidth * 0.455,
      child: Stack(
        children: [
          Container(
            height: deviceHeight * 0.25,
            width: deviceWidth * 0.44,
            padding: EdgeInsets.symmetric(
              vertical: deviceHeight * 0.025,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).canvasColor,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: deviceHeight * 0.06,
            left: deviceWidth * 0.02,
            child: Container(
              height: deviceHeight * 0.2,
              width: deviceWidth * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
