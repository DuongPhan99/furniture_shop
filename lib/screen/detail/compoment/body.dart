import 'package:flutter/cupertino.dart';
import 'package:flutter_furniture_shop/model/living.dart';

import 'furniture_grid_item.dart';
import 'header_sliver.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate: HeaderSliver(maxExtent: 120.0, minExtent: 120.0)),
          SliverGrid.count(
              crossAxisCount: 2,
              childAspectRatio: 0.65,
              mainAxisSpacing: 16.0,
              crossAxisSpacing: 16.0,
              children: livings.asMap().entries.map((e) {
                return FurnitureGridItem(
                  living: e.value,
                  margin: EdgeInsets.only(
                      left: e.key.isEven ? 16 : 0, right: e.key.isOdd ? 16 : 0),
                );
              }).toList())
        ],
      ),
    );
  }
}
