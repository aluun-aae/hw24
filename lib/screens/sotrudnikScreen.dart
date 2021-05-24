import 'package:flutter/material.dart';
import 'package:hw24/components/button.dart';
import 'package:hw24/components/listtile.dart';
import 'package:hw24/components/sotrudniki-info.dart';
import 'package:hw24/components/tittle.dart';
import 'package:hw24/costans/colors.dart';
import 'package:hw24/costans/images.dart';

class SotrudnikScreen extends StatefulWidget {
  SotrudnikScreen({Key key}) : super(key: key);

  @override
  _SotrudnikScreenState createState() => _SotrudnikScreenState();
}

class _SotrudnikScreenState extends State<SotrudnikScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(child: SotrudnikInfo()),
      ),
    );
  }
}
