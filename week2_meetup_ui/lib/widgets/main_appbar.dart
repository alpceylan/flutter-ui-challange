import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget {
  final String title;

  MainAppBar(
    this.title,
  );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Theme.of(context).accentColor,
        ),
        onPressed: () {},
      ),
      title: Text(
        title,
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
    );
  }
}
