import 'package:flutter/material.dart';

// Widgets
import '../widgets/section.dart';
import '../widgets/main_button.dart';
import '../widgets/secondary_button.dart';
import '../widgets/main_appbar.dart';
import '../widgets/pp_stack.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    final colors = [
      Colors.white,
      Colors.pink[100],
      Colors.pink[200],
      Colors.pink[300],
    ];

    final childs = [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MainButton(
            deviceHeight: deviceHeight,
            deviceWidth: deviceWidth,
            icon: Icons.music_note,
          ),
          MainButton(
            deviceHeight: deviceHeight,
            deviceWidth: deviceWidth,
            icon: Icons.show_chart,
          ),
          MainButton(
            deviceHeight: deviceHeight,
            deviceWidth: deviceWidth,
            icon: Icons.favorite_border,
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Today 6:00 PM',
            style: TextStyle(
              color: Colors.purple[700],
              fontSize: 18,
            ),
          ),
          Text(
            'Yoga and Meditation for Beginners',
            style: TextStyle(
              color: Colors.purple[800],
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: deviceHeight * 0.02,
          ),
          Row(
            children: [
              SizedBox(
                width: deviceWidth * 0.08,
              ),
              PPStack(deviceWidth),
              Text(
                'Marie and 4 Others',
                style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Today 6:00 PM',
            style: TextStyle(
              color: Colors.purple[700],
              fontSize: 18,
            ),
          ),
          Text(
            'Practice French, English and Chinese',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: deviceHeight * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SecondaryButton(
                deviceHeight: deviceHeight,
                deviceWidth: deviceWidth,
                icon: Icons.check,
              ),
              SizedBox(
                width: deviceWidth * 0.03,
              ),
              SecondaryButton(
                deviceHeight: deviceHeight,
                deviceWidth: deviceWidth,
                icon: Icons.close,
              ),
            ],
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Today 9:00 PM',
            style: TextStyle(
              color: Colors.purple[700],
              fontSize: 18,
            ),
          ),
          Text(
            'Easy and Gentle Yoga',
            style: TextStyle(
              color: Colors.white,
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: deviceHeight * 0.015,
          ),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: deviceHeight * 0.015,
                horizontal: deviceWidth * 0.04,
              ),
              decoration: BoxDecoration(
                color: Colors.pink[100],
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: Text(
                'You are going!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          deviceHeight * 0.08,
        ),
        child: MainAppBar('Meetup'),
      ),
      body: Container(
        height: deviceHeight,
        width: deviceWidth,
        child: ListView.builder(
          itemBuilder: (ctx, i) => Section(
            deviceHeight: deviceHeight,
            deviceWidth: deviceWidth,
            bgColor: i < 3 ? colors[i + 1] : colors[i],
            color: colors[i],
            child: childs[i],
          ),
          itemCount: childs.length,
        ),
      ),
    );
  }
}
