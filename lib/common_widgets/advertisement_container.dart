import 'package:flutter/material.dart';
class AdvertisementContainer extends StatelessWidget {
  const AdvertisementContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              width: 398.0,
              height: 132.0,
              margin: const EdgeInsets.only(
                top: 18.0,
                left: 16.0,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  "images/advertise.jpeg",
                  fit:
                      BoxFit.cover, 
                ),
              ),
            );
  }
}