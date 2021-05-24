import 'package:flutter/cupertino.dart';
import 'package:hw24/components/sotrudnik-card.dart';
import 'package:hw24/costans/images.dart';

class Sotrudniki extends StatefulWidget {
  Sotrudniki({Key key}) : super(key: key);

  @override
  _SotrudnikiState createState() => _SotrudnikiState();
}

class _SotrudnikiState extends State<Sotrudniki> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SotrudnikCard(
            image: TaskImage.sotrudnik1,
            name: "Жыпаркулов Мырзабек Жыпаркулович",
          ),
          SotrudnikCard(
            image: TaskImage.sotrudnik1,
            name: "Жыпаркулов Мырзабек Жыпаркулович",
          ),
          SotrudnikCard(
            image: TaskImage.sotrudnik1,
            name: "Жыпаркулов Мырзабек Жыпаркулович",
          ),
          SotrudnikCard(
            image: TaskImage.sotrudnik1,
            name: "Жыпаркулов Мырзабек Жыпаркулович",
          ),
          SotrudnikCard(
            image: TaskImage.sotrudnik1,
            name: "Жыпаркулов Мырзабек Жыпаркулович",
          )
        ],
      ),
    );
  }
}
