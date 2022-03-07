import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BuildTitle extends StatelessWidget {
  final String title;
  BuildTitle({this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 20.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          Row(
            children: <Widget>[
              Text(
                "View all",
                style: TextStyle(color: Colors.blue),
              ),
              SizedBox(
                width: 10.0,
              ),
              SvgPicture.asset(
                "assets/icons/transfer.svg",
                color: Colors.blue,
              )
            ],
          )
        ],
      ),
    );
  }
}
