import 'package:flutter/material.dart';
import './pages/_export_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {'/': (context) => Launch(), '/home': (context) => Home()},
      debugShowCheckedModeBanner: false,
      title: 'Foody',
      theme: ThemeData(
        fontFamily: 'Baloo2',
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
