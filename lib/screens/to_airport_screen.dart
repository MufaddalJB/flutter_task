import 'package:flutter/material.dart';
import 'package:flutter_task/common_widgets/advertisement_container.dart';
import 'package:flutter_task/common_widgets/bottom_image.dart';
import 'package:flutter_task/common_widgets/bottom_navigation_bar.dart';
import 'package:flutter_task/common_widgets/colored_divide.dart';
import 'package:flutter_task/common_widgets/custom_button.dart';
import 'package:flutter_task/common_widgets/info_container.dart';
import 'package:flutter_task/common_widgets/text_section.dart';
import 'package:flutter_task/common_widgets/top_row.dart';
import 'package:flutter_task/screens/from_airport_transfer_screen.dart';
import 'package:flutter_task/screens/local1_trip_screen.dart';
import 'package:flutter_task/screens/outstation_one_way_trip_screen.dart';
//import 'package:flutter_task/screens/outstation_one_way_trip_screen.dart';
import 'package:intl/intl.dart';

class ToAirportTransferScreen extends StatefulWidget {
  const ToAirportTransferScreen({super.key});

  @override
  State<ToAirportTransferScreen> createState() =>
      _ToAirportTransferScreenState();
}

class _ToAirportTransferScreenState extends State<ToAirportTransferScreen> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  String selectedPlace = "";
  String pickedAddress = "Maharashtra, Mumbai";
  String destinationAddress = "Maharashtra, Mumbai";
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );

    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

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
                    width: 110.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    margin: const EdgeInsets.only(
                      top: 13.0,
                      left: 11.0,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 8.0),
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
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const LocalTripScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: 110.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    margin: const EdgeInsets.only(
                      top: 13.0,
                      left: 5.0,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 8.0),
                        Image.asset(
                          "images/local_trip.jpeg",
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        const Text(
                          "Local Trip",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 110.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  margin: const EdgeInsets.only(
                    top: 13.0,
                    left: 5.0,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 8.0),
                      Image.asset(
                        "images/airport_green.jpeg",
                        width: 40,
                        height: 40,
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      const Text(
                        "Airport Transfer",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.green),
                      ),
                    ],
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
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const AirportTransferScreen(),
                            ),
                          );
                        },
                        child: Container(
                          width: 164,
                          height: 85.52,
                          margin: const EdgeInsets.only(),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(20.0)),
                            color: Colors.black,
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "From Airport",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                                ColoredDivider(
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 164,
                        height: 85.52,
                        margin: const EdgeInsets.only(),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(20.0)),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "To Airport",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              ColoredDivider(
                                color: Colors.green,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 398.0,
                    height: 370.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(20.0),
                          topRight: Radius.zero,
                          bottomLeft: const Radius.circular(20),
                          bottomRight: const Radius.circular(20.0),
                        ),
                        color: Colors.white),
                    margin: const EdgeInsets.only(),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    String userEnteredLocation = pickedAddress;
                                    return AlertDialog(
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          TextField(
                                            onChanged: (text) {
                                              userEnteredLocation = text;
                                            },
                                            decoration: InputDecoration(
                                              hintText:
                                                  "Enter your Pick-Up location",
                                            ),
                                          ),
                                        ],
                                      ),
                                      actions: <Widget>[
                                        ElevatedButton(
                                          child: Text("Cancel"),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                        ElevatedButton(
                                          child: Text("Save"),
                                          onPressed: () {
                                            setState(() {
                                              pickedAddress =
                                                  userEnteredLocation;
                                            });
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: InfoContainer(
                                  imagePath: "images/location_icon.jpeg",
                                  title: "Pick-up City",
                                  description: Text(pickedAddress)),
                            ),
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    String userEnteredLocation =
                                        destinationAddress;
                                    return AlertDialog(
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          TextField(
                                            onChanged: (text) {
                                              userEnteredLocation = text;
                                            },
                                            decoration: InputDecoration(
                                              hintText:
                                                  "Enter your Destination",
                                            ),
                                          ),
                                        ],
                                      ),
                                      actions: <Widget>[
                                        ElevatedButton(
                                          child: Text("Cancel"),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                        ElevatedButton(
                                          child: Text("Save"),
                                          onPressed: () {
                                            setState(() {
                                              destinationAddress =
                                                  userEnteredLocation;
                                            });
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: InfoContainer(
                                imagePath: "images/flag_icon.jpeg",
                                title: "Destination",
                                description: Text(destinationAddress),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => _selectDate(context),
                              child: InfoContainer(
                                imagePath: "images/calendar_icon.jpeg",
                                title: "Pick-up Date",
                                description: Text(
                                    DateFormat('dd/MM/yyyy')
                                        .format(selectedDate),
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    )),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => _selectTime(context),
                              child: InfoContainer(
                                imagePath: "images/clock_icon.jpeg",
                                title: "Time",
                                description: Text(
                                  "${selectedTime.format(context)}",
                                ),
                              ),
                            ),
                            Custombutton(onPressed: () {}),
                            const SizedBox(
                              height: 30,
                            )
                          ],
                        ),
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
                    imagepath: "images/home-icon.png",
                    text: "Home",
                    textColor: Colors.black),
                BottomNavItem(
                    imagepath: "images/trip-icon.png", text: "My Trip"),
                BottomNavItem(
                    imagepath: "images/person-icon.png", text: "Account"),
                BottomNavItem(imagepath: "images/more-icon.png", text: "More"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
