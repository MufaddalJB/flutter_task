import 'package:flutter/material.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';
class PickLocation extends StatefulWidget {
  const PickLocation({super.key});

  @override
  State<PickLocation> createState() => _PickLocationState();
}

class _PickLocationState extends State<PickLocation> {
  @override
  String address ="";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pick Location"),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height:200,
              child: Text(address)),
            SizedBox(
              height: 500,
              child:OpenStreetMapSearchAndPick(
              center: LatLong(23, 89),
              buttonColor: Colors.blue,
              buttonText: 'Set Current Location',
              onPicked: (pickedData) {
                setState(() {
                  address=pickedData.address;
                });
                print(pickedData.latLong.latitude);
                print(pickedData.latLong.longitude);
                print(pickedData.address);
              })
              ),
          ],
        ),
      ) ,
    );
  }
}