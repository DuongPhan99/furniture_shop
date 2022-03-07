import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BuildAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15.0, top: 20.0, right: 30.0),
      height: 80.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Furniture Shop",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CardItem(),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Get unique furniture from home",
            style: TextStyle(color: Colors.grey, fontSize: 15.0),
          )
        ],
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final int numberOfItemsInCard;
  CardItem({this.numberOfItemsInCard});
  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        Container(
          child: SvgPicture.asset(
            "assets/icons/cart.svg",
            width: 25.0,
            height: 25.0,
          ),
        ),
        Positioned(
            top: -5,
            right: -8,
            child: Container(
              alignment: Alignment.center,
              height: 15.0,
              width: 15.0,
              decoration:
                  BoxDecoration(color: Colors.blueGrey, shape: BoxShape.circle),
              child: Text(
                '1',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold),
              ),
            ))
      ],
    );
  }
}
