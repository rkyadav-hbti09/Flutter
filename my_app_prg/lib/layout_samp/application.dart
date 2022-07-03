import 'dart:ui';
import 'package:flutter/material.dart';

/*
1) Putting a Column inside an Expanded widget stretches the column to use all remaining free space in the row. Setting the crossAxisAlignment property to CrossAxisAlignment.start positions the column at the start of the row.
2) Putting the first row of text inside a Container enables you to add padding. The second child in the Column, also text, displays as grey.
3) The last two items in the title row are a star icon, painted red, and the text “41”. The entire row is in a Container and padded along each edge by 32 pixels. Add the title section to the app body like this:
4) arrange all of the elements in a ListView, rather than a Column, because a ListView supports app body scrolling when the app is run on a small device.
*/
class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Layout demo"),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/hotel.jpg',
              fit: BoxFit.fitWidth,
            ),
            TilteSections,
            bottomSection,
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                softWrap: true,
                'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                'Alps. Situated 1,578 meters above sea level, it is one of the '
                'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                'half-hour walk through pastures and pine forest, leads you to the '
                'lake, which warms to 20 degrees Celsius in the summer. Activities '
                'enjoyed here include rowing, and riding the summer toboggan run.',
              ),
            )
          ],
        ));
  }
}

Widget TilteSections = Container(
  padding: EdgeInsets.all(21),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                "Oesdchenii Lake compund",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              "Bangalore India",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
      Icon(
        Icons.star,
        color: Colors.red,
      ),
      Text('41')
    ],
  ),
);

Widget bottomSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    Column(
      children: [
        Icon(
          Icons.call,
          color: Colors.blue,
        ),
        Text(
          "CALL",
          style: TextStyle(
            color: Colors.blue,
          ),
        )
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.near_me,
          color: Colors.blue,
        ),
        Text(
          "ROUTE",
          style: TextStyle(
            color: Colors.blue,
          ),
        )
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.share,
          color: Colors.blue,
        ),
        Text(
          "SHARE",
          style: TextStyle(
            color: Colors.blue,
          ),
        )
      ],
    ),
  ],
);
