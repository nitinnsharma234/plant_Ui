import 'package:flutter/material.dart';
import 'package:plant_ui/components/featuredplants.dart';
import 'package:plant_ui/components/recommended_plants.dart';
import 'package:plant_ui/components/title_with_more_button.dart';
import 'package:plant_ui/constant.dart';

import 'headerwithsearchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // read aboves use
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended", press: () {}),
          RecommendedPlants(),
          TitleWithMoreBtn(
            title: "Featured Plants",
            press: () {},
          ),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}
