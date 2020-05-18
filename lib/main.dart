import 'package:flutter/material.dart';
import 'theme.dart';
import 'routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: setupRoute(),
        debugShowCheckedModeBanner: false,
        title: 'Foody',
        theme: setupTheme());
  }
}
