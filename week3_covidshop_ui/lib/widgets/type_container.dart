import 'package:flutter/material.dart';

class TypeContainer extends StatelessWidget {
  final double deviceHeight;
  final double deviceWidth;
  final String text;
  final double selectedIndex;
  final double index;

  TypeContainer({
    this.deviceHeight,
    this.deviceWidth,
    this.text,
    this.index,
    this.selectedIndex,
  });
    
  @override
  Widget build(BuildContext context) {
    return Container(
          height: deviceHeight * 0.05,
          width: deviceWidth * 0.25,
          margin: EdgeInsets.symmetric(
            horizontal: deviceWidth * 0.018,
          ),
          decoration: BoxDecoration(
            color: selectedIndex == index ? Colors.white : Theme.of(context).canvasColor,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              color: selectedIndex == index ? Colors.black : Colors.white,
              fontSize: 15,
            ),
          ),
      );
  }
}