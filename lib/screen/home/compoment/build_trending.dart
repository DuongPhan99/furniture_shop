import 'package:flutter/material.dart';
import 'package:flutter_furniture_shop/model/promo.dart';

import 'build_title.dart';

class BuildTrending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.0,
      child: Column(
        children: <Widget>[
          BuildTitle(
            title: "Treanding Furniture",
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0),
            height: 160.0,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => BuildTrendingCard(
                      promotion: promotions[index],
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      width: 5.0,
                    ),
                itemCount: promotions.length),
          )
        ],
      ),
    );
  }
}

class BuildTrendingCard extends StatelessWidget {
  final Promotion promotion;
  BuildTrendingCard({this.promotion});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15.0),
      height: 160.0,
      width: 280.0,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(promotion.imgtren), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
