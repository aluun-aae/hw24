import 'package:flutter/material.dart';
import 'package:hw24/costans/colors.dart';
import 'package:hw24/screens/sotrudnikScreen.dart';

class SotrudniksInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.grey,
      body: SotrudnikScreen(),
    );
  }
}
