import 'package:flutter/material.dart';
import 'package:flutter_furniture_shop/model/furniture.dart';
import 'package:flutter_furniture_shop/screen/home/compoment/build_app_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          InkWell(
            onTap: () {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              }
            },
            child: Container(
              alignment: Alignment.centerLeft,
              width: 60.0,
              child: SvgPicture.asset("assets/icons/back.svg"),
            ),
          ),
          Text(
            furnitures[0].title,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0),
          ),
          Container(
            alignment: Alignment.centerRight,
            width: 60.0,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 10.0,
              children: <Widget>[
                SvgPicture.asset(
                  "assets/icons/search.svg",
                  height: 20.0,
                ),
                CardItem()
              ],
            ),
          )
        ],
      ),
    );
  }
}
