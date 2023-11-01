import 'package:flutter/material.dart';
import 'package:flutter_task/screens/outstation_trip_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        textTheme:const TextTheme(
          titleLarge: TextStyle(color:Colors.white,fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      home:const OutstationTripScreen()
    );
  }
}
