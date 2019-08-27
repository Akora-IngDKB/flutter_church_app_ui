import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_church_app_ui/screens/church_home.dart';
import 'package:flutter_church_app_ui/screens/main_screen.dart';

Widget MyAppBar(BuildContext context, String title) {
  return AppBar(
    leading: IconButton(
        icon: Icon(Icons.more_horiz),
        onPressed: () {
          Navigator.of(context)
              .push(CupertinoPageRoute(builder: (_) => ChurchHome()));
        }),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(8),
        bottomRight: Radius.circular(8),
      ),
    ),
    centerTitle: true,
    elevation: 0,
    title: Text(title),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.home,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).pushReplacement(
              CupertinoPageRoute(builder: (_) => MainScreen()));
        },
      )
    ],
  );
}
