import 'package:flutter/material.dart';
import 'package:kodilan_mobile/constant/colors.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Text textGenerator(String text, Color color) {
      return Text(
        text,
        style: TextStyle(color: color, fontSize: 23),
      );
    }

    return Row(
      children: [
        textGenerator("{ ", CustomColors.green),
        textGenerator("kod", CustomColors.title),
        textGenerator(", ", CustomColors.green),
        textGenerator("ilan", CustomColors.title),
        textGenerator(" }", CustomColors.green)
      ],
    );
  }
}
