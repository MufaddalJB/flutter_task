import 'package:flutter/material.dart';
class InfoContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final Text description;

  const InfoContainer({super.key, required this.imagePath, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 58,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:const Color.fromARGB(255, 208, 255, 211),
      ),
      margin: const EdgeInsets.only(
        top: 10.0,left: 20,right: 20
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            width: 17.0,
          ),
          Image.asset(
            imagePath,
            height: 30,
            width: 31.0,
          ),
          const SizedBox(
            width: 40.0,
          ),
           SizedBox(
            width: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style:const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.green,
                  ),
                ),
                (description),
              ],
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          const Icon(Icons.cancel)
        ],
      ),
    );
  }
}
