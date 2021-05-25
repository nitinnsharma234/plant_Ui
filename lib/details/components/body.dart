import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_ui/constant.dart';
import 'package:plant_ui/details/components/imagesandicons.dart';

import '../title_and_price.dart';
import 'iconcard.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ImageandIcons(),
            TittleWithPrice(
              title: "Angelica",
              country: "Russia",
              price: 400,
            ),
            SizedBox(
              width: size.width / 3,
              height: 64,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.pinkAccent[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                ),
                child: Text(
                  "Buy Now",
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
