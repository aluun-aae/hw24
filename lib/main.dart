import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hw24/costans/colors.dart';
import 'package:hw24/screens/mainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MediaQuery(
        data: MediaQueryData(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "HomeWork",
          home: App(),
        ));
  }
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      body: MainScren(),
    );
  }
}
