import 'package:flutter/material.dart';
import 'package:kodilan_mobile/assets/icons/kodilan_icon.dart';
import 'package:kodilan_mobile/constant/colors.dart';

class HomeSearchWidget extends StatelessWidget {
  const HomeSearchWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      child: Container(
        height: 52.0,
        decoration: BoxDecoration(
          color: CustomColors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Icon(
                KodilanIcon.search,
                color: CustomColors.green,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                "Pozisyon adı, teknoloji adı",
                style:
                    TextStyle(color: CustomColors.placeholder, fontSize: 14.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
