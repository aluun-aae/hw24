import 'package:flutter/material.dart';
import 'package:hw24/costans/images.dart';
import 'package:hw24/logic/sotrudnik_data.dart';

import 'image.dart';

class Scroll extends StatefulWidget {
  final Images child;
  Scroll({this.child});

  @override
  _ScrollState createState() => _ScrollState();
}

class _ScrollState extends State<Scroll> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        child: ListView(scrollDirection: Axis.horizontal, children: [
          Images(
            image: TaskImage.sotrudnik1,
          ),
          Images(
            image: TaskImage.sotrudnik2,
          ),
          Images(
            image: TaskImage.sotrudnik3,
          ),
          Images(
            image: TaskImage.sotrudnik4,
          ),
          Images(
            image: TaskImage.sotrudnik1,
          )
        ])
        // child: ListView.builder(
        //   itemCount: sotr.length,
        //   itemBuilder: (BuildContext context, int index) {
        //     return Image(image: )
        //   },
        // ),
        );
  }
}
