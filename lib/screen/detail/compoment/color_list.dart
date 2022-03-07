import 'package:flutter/material.dart';
import 'package:flutter_furniture_shop/contants/color.dart';

class ColorList extends StatefulWidget {
  final List<Color> colors;
  final Function(Color) onSelect;

  const ColorList(
    this.colors, {
    Key key,
    this.onSelect,
  }) : super(key: key);
  @override
  _ColorListState createState() => _ColorListState();
}

class _ColorListState extends State<ColorList> {
  Color selected;

  select(color) {
    if (selected == color)
      selected = null;
    else
      selected = color;
    if (widget.onSelect != null) widget.onSelect(selected);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.0),
      width: double.infinity,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        scrollDirection: Axis.horizontal,
        child: Wrap(
            spacing: 15.0,
            children: widget.colors.map((color) {
              return InkWell(
                onTap: () {
                  select(color);
                },
                child: Container(
                  height: 45.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: selected == color
                          ? Border.all(width: 3.0, color: primaryColor)
                          : null,
                      color: color,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset.zero,
                            blurRadius: 15,
                            color: Colors.black.withOpacity(0.1))
                      ]),
                ),
              );
            }).toList()),
      ),
    );
  }
}
