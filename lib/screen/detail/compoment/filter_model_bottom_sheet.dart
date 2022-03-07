import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_furniture_shop/contants/color.dart';

import 'color_list.dart';
import 'filter_list.dart';

class FilterModelBottomSheet extends StatelessWidget {
  void close(context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(28.0),
        child: Wrap(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    close(context);
                  },
                  child: Icon(Icons.close),
                ),
                Text(
                  "Filter",
                  style: TextStyle(fontSize: 18.0),
                ),
                Container(
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "Reset",
                      style: TextStyle(fontSize: 18.0, color: primaryColor),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text(
                "Price Range",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 15.0),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 15.0),
                    width: (size.width / 2) - 55,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5.0)),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Minimum"),
                    ),
                  ),
                  Container(
                    height: 1,
                    width: 15.0,
                    color: Colors.black38,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15.0),
                    width: (size.width / 2) - 55,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5.0)),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Maximum"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text(
                "Item Filter",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: FilterList(onSelect: (selected) => print(selected)),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 25.0,
              ),
              child: Text(
                "Item Color",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            ColorList(
              [
                Colors.white,
                Colors.black87,
                Colors.blue,
                Colors.cyan,
                Colors.red,
              ],
              onSelect: (color) => print(color),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 20.0),
              child: RaisedButton(
                elevation: 0.0,
                color: primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                onPressed: () {
                  close(context);
                },
                padding: EdgeInsets.all(15.0),
                child: Text("Apply Filter",
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
