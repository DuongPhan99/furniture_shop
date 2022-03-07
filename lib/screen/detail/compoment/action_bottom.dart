import 'package:flutter/material.dart';
import 'package:flutter_furniture_shop/contants/color.dart';
import 'package:flutter_svg/svg.dart';

class ActionBottom extends StatelessWidget {
  final String title;
  final Function() ontap;
  final String iconPath;
  final bool active;
  ActionBottom({this.iconPath, this.ontap, this.title, this.active = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 10.0,
        children: <Widget>[
          SvgPicture.asset(
            iconPath,
            color: active == false ? primaryColor : Colors.black,
          ),
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    fontSize: 16.0,
                    color: active == false ? primaryColor : Colors.black),
              ),
              active == false
                  ? Positioned(
                      top: -3,
                      right: -12,
                      child: Container(
                        padding: EdgeInsets.all(3.0),
                        height: 14.0,
                        width: 14.0,
                        decoration: BoxDecoration(
                            color: primaryColor, shape: BoxShape.circle),
                        child: SvgPicture.asset(
                          "assets/icons/tick.svg",
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Container()
            ],
          )
        ],
      ),
    );
  }
}

class VerticalSep extends StatelessWidget {
  const VerticalSep({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.0,
      width: 1.0,
      color: Colors.grey.withOpacity(0.3),
    );
  }
}
