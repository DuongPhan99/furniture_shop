import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BuildSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      margin: EdgeInsets.only(left: 15.0, right: 25.0),
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: Offset(0, 3),
            spreadRadius: 1.0,
            blurRadius: 10.0,
            color: Colors.grey.withOpacity(0.2))
      ]),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search unique funiture...",
          hintStyle: TextStyle(color: Colors.grey),
          border: InputBorder.none,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              "assets/icons/search.svg",
            ),
          ),
        ),
      ),
    );
  }
}
