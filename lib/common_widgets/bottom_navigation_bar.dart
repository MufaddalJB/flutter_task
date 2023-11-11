import 'package:flutter/material.dart';
class BottomNavigation extends StatelessWidget {
  final List<BottomNavItem> items;

  const BottomNavigation({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 85.0,
      decoration:const BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        color: Colors.green,
      ),
      margin: const EdgeInsets.only(top: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: items.map((item) {
          return NavBarItem(
            imagepath: item.imagepath,
            text: item.text,
            textColor: item.textColor,
          );
        }).toList(),
      ),
    );
  }
}

class BottomNavItem {
  final String imagepath;
  final String text;
  final Color textColor;

  BottomNavItem({required this.imagepath, required this.text, this.textColor = Colors.white});
}

class NavBarItem extends StatelessWidget {
  final String imagepath;
  final String text;
  final Color textColor;

  const NavBarItem({super.key, required this.imagepath, required this.text, this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagepath,width: 30.0,height: 35.0,),
          Text(text, style: TextStyle(color: textColor)),
        ],
      ),
    );
  }
}
