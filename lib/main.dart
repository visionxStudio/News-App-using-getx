import 'package:flutter/material.dart';
import 'package:news_app/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter News App',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.cyan[600],
      ),
      home: Homepage(),
    );
  }
}
