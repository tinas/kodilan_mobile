import 'package:flutter/material.dart';
import 'package:kodilan_mobile/constant/colors.dart';
import 'package:kodilan_mobile/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kodilan",
      theme: ThemeData(primaryColor: CustomColors.background),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
