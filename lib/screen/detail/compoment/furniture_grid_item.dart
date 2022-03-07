import 'package:flutter/material.dart';
import 'package:flutter_furniture_shop/contants/color.dart';
import 'package:flutter_furniture_shop/model/living.dart';

import 'package:flutter_simple_rating_bar/flutter_simple_rating_bar.dart';

class FurnitureGridItem extends StatelessWidget {
  final Living living;
  final EdgeInsets margin;
  FurnitureGridItem({this.living, this.margin});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin == null ? EdgeInsets.zero : margin,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              offset: Offset.zero,
              blurRadius: 15.0,
              color: Colors.black.withOpacity(0.05))
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 37.0),
                    height: 180.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      alignment: Alignment.bottomCenter,
                      image: AssetImage(living.imagePath),
                    )),
                  ),
                  if (living.discountPercent != null)
                    Positioned(
                      right: 10.0,
                      top: 10.0,
                      child: Container(
                        alignment: Alignment.center,
                        height: 35.0,
                        width: 35.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: primaryColor),
                        child: Text(
                          "%${living.discountPercent}",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  living.name,
                  style: TextStyle(fontSize: 14.0),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Wrap(
                  spacing: 5,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: <Widget>[
                    Text(
                      "\$${living.orginalPrice.toDouble()}",
                      style: TextStyle(color: primaryColor, fontSize: 16.0),
                    ),
                    if (living.discountPercent != null)
                      Text(
                        "${living.discountPercent.toDouble()}",
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey),
                      ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 0.0),
                  alignment: Alignment.center,
                  child: Row(
                    children: <Widget>[
                      RatingBar(
                        rating: 3,
                        icon: Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.grey,
                        ),
                        starCount: 5,
                        spacing: 2.0,
                        size: 12,
                        isIndicator: false,
                        allowHalfRating: true,
                        onRatingCallback:
                            (double value, ValueNotifier<bool> isIndicator) {
                          print('Number of stars-->  $value');
                          //change the isIndicator from false  to true ,the       RatingBar cannot support touch event;
                          isIndicator.value = true;
                        },
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "${living.rating}",
                        style: TextStyle(fontSize: 15.0),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
