import 'package:flutter/material.dart';
import 'package:praktikum/about_page.dart';
import 'package:praktikum/home_page.dart';
import 'package:praktikum/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/about': (context) => AboutPage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
