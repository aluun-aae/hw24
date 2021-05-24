import 'package:flutter/cupertino.dart';
import 'package:hw24/costans/images.dart';

class Images extends StatefulWidget {
  final String image;
  Images({this.image});

  @override
  _ImagesState createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 80,
      child: Image.asset(
        widget.image,
        width: 60,
        height: 60,
      ),
    );
  }
}
