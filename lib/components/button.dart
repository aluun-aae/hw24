import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hw24/costans/colors.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class TelButton extends StatelessWidget {
  const TelButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: _callNumber,
      icon: Icon(
        Icons.call,
        color: AppColors.green,
      ),
    );
  }
}

_callNumber() async {
  const number = "+9965501234321";
  bool res = await FlutterPhoneDirectCaller.callNumber(number);
}
