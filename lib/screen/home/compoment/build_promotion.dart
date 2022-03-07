import 'package:flutter/material.dart';
import 'package:flutter_furniture_shop/contants/color.dart';
import 'package:flutter_furniture_shop/model/promo.dart';

class BuildPromotion extends StatelessWidget {
  final List<Color> bgColors = [primaryPromoColor, secondaryPromoColor];
  final Promotion promotion;
  BuildPromotion({this.promotion});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16.0),
        margin: EdgeInsets.only(right: 15.0),
        height: 160.0,
        width: 250.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
                offset: Offset.zero,
                blurRadius: 15.0,
                color: Colors.black.withOpacity(0.1)),
          ],
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors:
                  promotion.reversegradient != null && promotion.reversegradient
                      ? bgColors.reversed.toList()
                      : bgColors),
          image: DecorationImage(
              image: AssetImage(promotion.backgroundImagePath),
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: <Widget>[
            if (promotion.imagePath != null)
              Positioned(
                  right: -5,
                  bottom: 20.0,
                  child: Image.asset(promotion.imagePath)),
            Wrap(
              direction: Axis.vertical,
              children: <Widget>[
                Text(
                  promotion.title,
                  style: TextStyle(color: Colors.white, height: 1.5),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  promotion.subtitle,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            Positioned(
                left: 0.0,
                bottom: 0.0,
                child: promotion.tag != null
                    ? Container(
                        alignment: Alignment.center,
                        height: 20.0,
                        width: 80.0,
                        decoration:
                            BoxDecoration(color: Colors.white.withOpacity(0.2)),
                        child: Text(
                          promotion.tag,
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                      )
                    : Text(
                        promotion.caption,
                        style: TextStyle(color: Colors.white, height: 1.5),
                      ))
          ],
        ));
  }
}
