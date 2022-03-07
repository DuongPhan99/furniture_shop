import 'package:flutter/material.dart';
import 'package:flutter_furniture_shop/model/furniture.dart';
import 'package:flutter_furniture_shop/screen/detail/detail_screen.dart';
import 'package:flutter_svg/svg.dart';

import 'build_title.dart';

class BuildCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.0,
      margin: EdgeInsets.only(top: 20.0),
      child: Column(
        children: <Widget>[
          BuildTitle(
            title: "Categories",
          ),
          Container(
            height: 110.0,
            margin: EdgeInsets.only(
              left: 10.0,
            ),
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen()));
                      },
                      child: BuildCard(
                        furniture: furnitures[index],
                      ),
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      width: 5.0,
                    ),
                itemCount: furnitures.length),
          )
        ],
      ),
    );
  }
}

class BuildCard extends StatelessWidget {
  final Furniture furniture;
  BuildCard({this.furniture});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
      height: 70.0,
      width: 140.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 3),
                spreadRadius: 1.0,
                blurRadius: 10.0,
                color: Colors.grey.withOpacity(0.2))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            furniture.iconData,
            width: 50.0,
            height: 40.0,
            color: Colors.blue,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(furniture.title)
        ],
      ),
    );
  }
}
