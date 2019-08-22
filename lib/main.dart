import 'package:flutter/material.dart';
import 'package:flutter_church_app_ui/screens/church_home.dart';
import 'package:flutter_church_app_ui/screens/events.dart';
import 'package:flutter_church_app_ui/screens/main_screen.dart';
import 'package:flutter_church_app_ui/screens/sermons.dart';
import 'package:flutter_church_app_ui/screens/testimonials.dart';

final routes = {
  'home': (context) => MainScreen(),
  '/menu': (context) => ChurchHome(),
  '/main_screen': (context) => MainScreen(),
  '/testimonials': (context) => Testimonials(),
  '/sermons': (context) => SermonsPage(),
  '/events': (context) => EventsPage(),
};

main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      routes: routes,
      title: 'Church App',
      theme: ThemeData(
        primaryColor: Color(0xFF414278),
      ),
    ));
