import 'package:flutter/material.dart';

import 'package:flutter_furniture_shop/model/trending.dart';
import 'package:flutter_furniture_shop/screen/home/compoment/build_title.dart';
import 'build_app_bar.dart';
import 'build_categories.dart';
import 'build_search.dart';
import 'build_today_promo.dart';
import 'build_trending.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            BuildAppBar(),
            BuildSearch(),
            BuildCategories(),
            BuidTodayPromo(),
            BuildTrending(),
            Container(
              height: 200.0,
              child: Column(
                children: <Widget>[
                  BuildTitle(
                    title: "Featured Funiture",
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 15.0,
                    ),
                    height: 160.0,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Container(
                              margin: EdgeInsets.only(right: 15.0),
                              height: 160.0,
                              width: 280.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        treands[0].imageFeature[index],
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 5.0,
                            ),
                        itemCount: treands[0].imageFeature.length),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
