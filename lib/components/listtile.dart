import 'package:flutter/material.dart';
import 'package:hw24/components/tittle.dart';
import 'package:hw24/costans/colors.dart';

import 'button.dart';

class Listtile extends StatefulWidget {
  final String title1;
  final String title2;
  final TelButton button;
  Listtile({this.title1, this.title2, this.button});

  @override
  _ListtileState createState() => _ListtileState();
}

class _ListtileState extends State<Listtile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 1, color: AppColors.grey3))),
      child: ListTile(
        title: Tittle(
          color: AppColors.grey2,
          fontsize: 12,
          tittle: widget.title1,
        ),
        trailing: widget.button,
        subtitle: Tittle(
          color: AppColors.black,
          fontWeight: FontWeight.w500,
          fontsize: 16,
          tittle: widget.title2,
        ),
      ),
    ));
  }
}
