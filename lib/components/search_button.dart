import 'package:flutter/material.dart';
import 'package:kodilan_mobile/assets/icons/kodilan_icon.dart';
import 'package:kodilan_mobile/constant/colors.dart';

class SearchButtonWidget extends StatelessWidget {
  const SearchButtonWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 40,
        child: Row(
          children: [
            Icon(
              KodilanIcon.search,
              size: 18,
              color: CustomColors.green,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text(
                "Pozisyon adı, teknoloji adı",
                style: TextStyle(color: CustomColors.placeholder, fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
