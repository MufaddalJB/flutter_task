import 'package:flutter/material.dart';
import 'package:flutter_task/common_widgets/advertisement_container.dart';
import 'package:flutter_task/common_widgets/bottom_image.dart';
import 'package:flutter_task/common_widgets/bottom_navigation_bar.dart';
import 'package:flutter_task/common_widgets/colored_divide.dart';
import 'package:flutter_task/common_widgets/custom_button.dart';
import 'package:flutter_task/common_widgets/info_container.dart';
import 'package:flutter_task/common_widgets/text_section.dart';
import 'package:flutter_task/common_widgets/top_row.dart';
import 'package:flutter_task/screens/airport_transfer_screen.dart';
import 'package:flutter_task/screens/outstation_trip_screen.dart';

class LocalTripScreen extends StatefulWidget {
  const LocalTripScreen({super.key});

  @override
  State<LocalTripScreen> createState() => _OneWayTripScreenState();
}

class _OneWayTripScreenState extends State<LocalTripScreen> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopRow(),
            TextSection(),
            const AdvertisementContainer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const OutstationTripScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: 130.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    margin: const EdgeInsets.only(
                      top: 13.0,
                      left: 11.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/outstation_trip.jpeg",
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        const Text(
                          "Outstation Trip",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 130.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  margin: const EdgeInsets.only(
                    top: 13.0,
                    left: 5.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "images/local_green.jpeg",
                        width: 40,
                        height: 40,
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      const Text(
                        "Local Trip",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const AirportTransferScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: 130.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    margin: const EdgeInsets.only(
                      top: 13.0,
                      left: 5.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/airport_transfer.jpeg",
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        const Text(
                          "Airport Transfer",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 25, 16, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            value = !value;
                          });
                        },
                        child: Container(
                          width: 189.5,
                          height: 85.52,
                          margin: const EdgeInsets.only(),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(20.0)),
                            color: value ? Colors.white : Colors.black,
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "8hrs | 80kms",
                                  style: TextStyle(
                                    color: value ? Colors.green : Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                                ColoredDivider(
                                  color: value ? Colors.green : Colors.black,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            value = !value;
                          });
                        },
                        child: Container(
                          width: 189.5,
                          height: 85.52,
                          margin: const EdgeInsets.only(),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(20.0)),
                            color: value ? Colors.black : Colors.white,
                          ),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "12 hrs | 20kms",
                                  style: TextStyle(
                                    color: value ? Colors.white : Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                                ColoredDivider(
                                  color: value ? Colors.black : Colors.green,
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: 398.0,
                    height: 355.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft:
                              value ? Radius.zero : const Radius.circular(20.0),
                          topRight:
                              value ? const Radius.circular(20.0) : Radius.zero,
                          bottomLeft: const Radius.circular(20),
                          bottomRight: const Radius.circular(20.0),
                        ),
                        color: Colors.white),
                    margin: const EdgeInsets.only(),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const InfoContainer(
                              imagePath: "images/location_icon.jpeg",
                              title: "Pick-up City",
                              description: "Faizabad,Utter Pradesh"),
                          const InfoContainer(
                              imagePath: "images/calendar_icon.jpeg",
                              title: "Pick-up Date",
                              description: "20/10/23"),
                          const InfoContainer(
                              imagePath: "images/clock_icon.jpeg",
                              title: "Time",
                              description: "04:45 PM "),
                          CustomButton(onPressed: () {}),
                          const SizedBox(
                            height: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const BottomImage(),
            BottomNavigation(
              items: [
                BottomNavItem(
                    icon: Icons.home_filled,
                    text: "Home",
                    textColor: Colors.black),
                BottomNavItem(icon: Icons.trip_origin, text: "My Trip"),
                BottomNavItem(icon: Icons.person, text: "Account"),
                BottomNavItem(icon: Icons.more, text: "More"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
