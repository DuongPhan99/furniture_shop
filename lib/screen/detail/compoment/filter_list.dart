import 'package:flutter/material.dart';
import 'package:flutter_furniture_shop/contants/color.dart';
import 'package:flutter_furniture_shop/model/filter.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterList extends StatefulWidget {
  final Function(List<String>) onSelect;
  FilterList({this.onSelect});
  @override
  _FilterListState createState() => _FilterListState();
}

class _FilterListState extends State<FilterList> {
  List<String> selected = [];
  toggle(title) {
    if (selected.contains(title))
      selected.remove(title);
    else
      selected.add(title);

    setState(() {
      widget.onSelect(selected);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => BuildFilter(
                filter: filters[index],
                selected: this.selected.contains(filters[index].title),
                ontap: () {
                  toggle(filters[index].title);
                },
              ),
          separatorBuilder: (context, index) => SizedBox(
                height: 5.0,
              ),
          itemCount: filters.length),
    );
  }
}

class BuildFilter extends StatelessWidget {
  final Filter filter;
  final bool selected;
  final Function ontap;
  BuildFilter({this.filter, this.ontap, this.selected});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(color: Colors.black12, width: 1.0))),
        child: Row(
          children: <Widget>[
            filter.icon,
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  filter.title,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            if (selected)
              Icon(
                Icons.check,
                color: primaryColor,
              )
          ],
        ),
      ),
    );
  }
}
