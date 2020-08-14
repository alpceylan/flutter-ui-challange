import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Screens
import './screens/home_screen.dart';

// Providers
import './providers/products.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (ctx) => Products(),
      child: MaterialApp(
        title: 'Covid Shop',
        theme: ThemeData(
          fontFamily: 'Gilroy-Medium',
          backgroundColor: Colors.grey[850],
          canvasColor: Colors.grey[700],
        ),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
        routes: {
          HomeScreen.routeName: (ctx) => HomeScreen(),
        },
      ),
    );
  }
}
