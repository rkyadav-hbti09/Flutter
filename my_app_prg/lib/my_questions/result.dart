import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("You are safe from me",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/images/poni1.jpg',
            height: 400,
            width: 400,
          ),
          Text("Kha jauga next time",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
