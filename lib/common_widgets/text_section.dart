import 'package:flutter/material.dart';
class TextSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 263.0,
      height: 108.0,
      margin: const EdgeInsets.only(
        top: 17.0,
        left: 20.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "India's Leading",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            "One Way Inter-City",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            "Cab Service Provider",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
