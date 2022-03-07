import 'package:flutter/material.dart';
import 'package:flutter_furniture_shop/screen/detail/compoment/body.dart';
import 'package:flutter_furniture_shop/screen/home/compoment/build_bottom_nav_bar.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BuildBottomNavBar(),
    );
  }
}
