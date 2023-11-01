import 'package:flutter/material.dart';
class BottomImage extends StatelessWidget {
  const BottomImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              width: 398.0,
              height: 180.0,
              margin: const EdgeInsets.only(
                top: 46.0,
                left: 16.0,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  "images/bottom.jpeg",
                  fit:
                      BoxFit.cover, 
                ),
              ),
            );
  }
}