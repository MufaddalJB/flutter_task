import 'package:flutter/material.dart';
class TopRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 229.0,
          height: 74.0,
          margin: const EdgeInsets.only(
            top: 63.0,
            left: 16.0,
          ),
          child: Image.asset("images/logo.jpeg"),
        ),
        Container(
          width: 38.0,
          height: 38.0,
          margin: const EdgeInsets.only(
            top: 78.0,
            left: 125.0,
          ),
          child: Image.asset("images/bell_icon.png"),
        ),
      ],
    );
  }
}
