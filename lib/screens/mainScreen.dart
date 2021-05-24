import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:hw24/components/image.dart';
import 'package:hw24/components/listScroll.dart';
import 'package:hw24/components/sotrudnik-card.dart';
import 'package:hw24/components/sotrudniki.dart';
import 'package:hw24/components/tittle.dart';
import 'package:hw24/costans/colors.dart';
import 'package:hw24/costans/images.dart';

class MainScren extends StatefulWidget {
  MainScren({Key key}) : super(key: key);

  @override
  _MainScrenState createState() => _MainScrenState();
}

class _MainScrenState extends State<MainScren> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Tittle(
                textAlign: TextAlign.left,
                fontsize: 20,
                tittle: 'Сотрудники',
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 16,
              ),
              Tittle(
                fontWeight: FontWeight.bold,
                fontsize: 16,
                tittle: "У кого сегодня день рождения",
                color: AppColors.blue,
              ),
              SizedBox(
                height: 12,
              ),
              Scroll(),
              SizedBox(
                height: 23,
              ),
              Tittle(
                fontWeight: FontWeight.bold,
                fontsize: 16,
                tittle: "У кого завтра день рождения",
                color: AppColors.black,
              ),
              SizedBox(
                height: 12,
              ),
              Scroll(),
              SizedBox(
                height: 23,
              ),
              Tittle(
                fontWeight: FontWeight.bold,
                fontsize: 16,
                tittle: "Все сотрудники",
                color: AppColors.black,
              ),
              SizedBox(
                height: 24,
              ),
              Sotrudniki()
            ],
          ),
        ),
      ),
    );
  }
}
