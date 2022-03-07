import 'package:flutter/material.dart';
import 'package:flutter_furniture_shop/contants/color.dart';
import 'package:flutter_furniture_shop/screen/home/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: primaryColor,
          primarySwatch: Colors.blue,
          splashColor: Colors.transparent,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: HomeScreen(),
    );
  }
}
