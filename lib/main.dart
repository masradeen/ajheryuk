import 'package:flutter/material.dart';
import './pages/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
      initialRoute: WelcomePage.nameRoute,
      routes: {
        WelcomePage.nameRoute: (context) => WelcomePage(),
      },
    );
  }
}