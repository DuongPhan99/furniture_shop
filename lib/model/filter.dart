import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Filter {
  final Widget icon;
  final String title;
  Filter({this.icon, this.title});
}

List<Filter> filters = [
  Filter(
      icon: SvgPicture.asset(
        "assets/icons/tag.svg",
        color: Colors.grey.withOpacity(0.5),
      ),
      title: 'Discount'),
  Filter(
      icon: SvgPicture.asset(
        "assets/icons/delivery.svg",
        color: Colors.grey.withOpacity(0.5),
      ),
      title: 'Free Delivery'),
  Filter(
      icon: SvgPicture.asset(
        "assets/icons/card.svg",
        color: Colors.grey.withOpacity(0.5),
      ),
      title: 'Installment Plan')
];
