import 'package:flutter/material.dart';

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

    final childs = [];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).accentColor,
          ),
          onPressed: () {},
        ),
        title: Text(
          'Selam',
          style: TextStyle(
            color: Theme.of(context).accentColor,
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            color: Theme.of(context).accentColor,
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        height: deviceHeight,
        width: deviceWidth,
        child: Column(
          children: [
            Container(
              color: Colors.pink[100],
              child: Container(
                height: deviceHeight * 0.22,
                width: deviceWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
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
                        Icons.music_note,
                        color: Theme.of(context).accentColor,
                        size: (deviceWidth * 0.013) * (deviceHeight * 0.01),
                      ),
                    ),
                    Container(
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
                        Icons.show_chart,
                        color: Theme.of(context).accentColor,
                        size: (deviceWidth * 0.013) * (deviceHeight * 0.01),
                      ),
                    ),
                    Container(
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
                        Icons.favorite_border,
                        color: Theme.of(context).accentColor,
                        size: (deviceWidth * 0.013) * (deviceHeight * 0.01),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.pink[200],
              child: Container(
                height: deviceHeight * 0.22,
                width: deviceWidth,
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                  ),
                ),
                child: Column(
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
                        Stack(
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
                        ),
                        Text(
                          'Marie and 4 Others',
                          style: TextStyle(color: Theme.of(context).accentColor, fontSize: 15,),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.pink[300],
              child: Container(
                height: deviceHeight * 0.22,
                width: deviceWidth,
                decoration: BoxDecoration(
                  color: Colors.pink[200],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.pink[300],
              child: Container(
                height: deviceHeight * 0.22,
                width: deviceWidth,
                decoration: BoxDecoration(
                  color: Colors.pink[300],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
