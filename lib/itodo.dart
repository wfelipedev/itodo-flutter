import 'package:flutter/material.dart';
import 'package:itodo/pages/home/home.dart';
import 'package:itodo/utils/constants.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ITodo',
      theme: ThemeData(
        accentColor: Colors.white,
        primaryColor: kbackgroundColor,
      ),
      home: Home(),
    );
  }
}
