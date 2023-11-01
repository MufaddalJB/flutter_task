import 'package:flutter/material.dart';
class ColoredDivider extends StatelessWidget {
  final Color color;
  final double thickness;

  ColoredDivider({this.color = Colors.green, this.thickness = 5});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color,
      height: 0,
      thickness: thickness,
      indent: 30,
      endIndent: 30,
    );
  }
}
