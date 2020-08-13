import 'package:flutter/material.dart';

// Screens
import './screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Week 2 Meetup UI',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.pink[800],
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
