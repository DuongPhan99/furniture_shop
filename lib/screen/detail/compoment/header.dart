import 'package:flutter/material.dart';
import 'action_bottom.dart';
import 'build_app_bar.dart';
import 'filter_model_bottom_sheet.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 10.0,
            color: Colors.black.withOpacity(0.05))
      ]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          BuildAppBar(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 28.0, vertical: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ActionBottom(
                  iconPath: "assets/icons/controls.svg",
                  title: "Filter",
                  ontap: () {
                    _settingModalBottomSheet(context);
                  },
                  active: false,
                ),
                VerticalSep(),
                ActionBottom(
                  iconPath: "assets/icons/sort.svg",
                  title: "Sort",
                  ontap: () {},
                  active: true,
                ),
                VerticalSep(),
                ActionBottom(
                  iconPath: "assets/icons/list.svg",
                  title: "List",
                  ontap: () {},
                  active: true,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
      context: context,
      builder: (BuildContext bc) {
        return FilterModelBottomSheet();
      });
}
