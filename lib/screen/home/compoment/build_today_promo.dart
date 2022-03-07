import 'package:flutter/material.dart';
import 'package:flutter_furniture_shop/model/promo.dart';

import 'build_promotion.dart';
import 'build_title.dart';

class BuidTodayPromo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.0,
      child: Column(
        children: <Widget>[
          BuildTitle(
            title: "Today's Promo",
          ),
          Container(
            margin: EdgeInsets.only(
              left: 15.0,
            ),
            height: 160.0,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => BuildPromotion(
                      promotion: promotions[index],
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      width: 10.0,
                    ),
                itemCount: promotions.length),
          )
        ],
      ),
    );
  }
}
