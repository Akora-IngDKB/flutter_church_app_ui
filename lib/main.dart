import 'package:flutter/material.dart';
import 'package:flutter_church_app_ui/screens/main_screen.dart';
import 'package:flutter_church_app_ui/utils/router.dart';

main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      // routes: routes,
      onGenerateRoute: Router.generateRoute,
      title: 'Church App',
      theme: ThemeData(
        primaryColor: Color(0xFF414278),
      ),
    ));
