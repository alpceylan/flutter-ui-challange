import 'package:flutter/material.dart';

class PPStack extends StatelessWidget {
  final double deviceWidth;

  PPStack(
    this.deviceWidth,
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
            left: deviceWidth * 0.42,
          ),
        ),
        CircleAvatar(
          radius: 23,
          backgroundImage: AssetImage(
            'assets/images/female1.jpg',
          ),
        ),
        Positioned(
          left: deviceWidth * 0.06,
          child: CircleAvatar(
            radius: 23,
            backgroundImage: AssetImage(
              'assets/images/female2.jpeg',
            ),
          ),
        ),
        Positioned(
          left: deviceWidth * 0.13,
          child: CircleAvatar(
            radius: 23,
            backgroundImage: AssetImage(
              'assets/images/female3.jpg',
            ),
          ),
        ),
        Positioned(
          left: deviceWidth * 0.2,
          child: CircleAvatar(
            radius: 23,
            backgroundImage: AssetImage(
              'assets/images/male1.jpg',
            ),
          ),
        ),
        Positioned(
          left: deviceWidth * 0.27,
          child: CircleAvatar(
            radius: 23,
            backgroundImage: AssetImage(
              'assets/images/male2.jpeg',
            ),
          ),
        ),
      ],
    );
  }
}
