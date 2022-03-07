import 'package:flutter/material.dart';

import 'compoment/body.dart';
import 'compoment/build_bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BuildBottomNavBar(),
    );
  }
}

