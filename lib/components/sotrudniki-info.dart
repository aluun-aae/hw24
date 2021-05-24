import 'package:flutter/material.dart';
import 'package:hw24/components/tittle.dart';
import 'package:hw24/costans/colors.dart';
import 'package:hw24/costans/images.dart';

import 'button.dart';
import 'listtile.dart';

class SotrudnikInfo extends StatelessWidget {
  const SotrudnikInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 18,
          ),
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              TaskImage.sotrudnik1,
              height: 114,
              fit: BoxFit.fitWidth,
              width: 114,
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Tittle(
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w500,
            fontsize: 24,
            tittle: "Жыпаркулов Мырзабек Жыпаркулович",
          ),
          SizedBox(
            height: 11,
          ),
          Tittle(
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w400,
            color: AppColors.blue,
            fontsize: 16,
            tittle: "Генеральный директор",
          ),
          SizedBox(
            height: 40,
          ),
          Listtile(
            title1: "Направление",
            title2: "Дирекция управления",
          ),
          Listtile(
            title1: "Отдел",
            title2: "Отдел управления",
          ),
          Listtile(
            title1: "Email",
            title2: "mjagarkulov@gosecotech.kg",
          ),
          Listtile(
            title1: "Дата рождения",
            title2: "16.09.1972",
          ),
          Listtile(
            button: TelButton(),
            title1: "Телефон основной",
            title2: "+9965551234321",
          ),
          Listtile(
            button: TelButton(),
            title1: "Телефон рабочий",
            title2: "+9965551234321",
          ),
          Listtile(
            button: TelButton(),
            title1: "Телефон WhatsApp",
            title2: "+9965551234321",
          )
        ],
      ),
    );
  }
}
