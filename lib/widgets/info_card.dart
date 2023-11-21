import "package:flutter/material.dart";
import "package:neutrino/utility/constants.dart";


class InfoCard extends StatelessWidget {

  InfoCard({ super.key });

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;

    return Container(height: 160, width: screenWidth*0.48,
                     decoration: BoxDecoration(color: ocean, borderRadius: BorderRadius.all(Radius.circular(10))));

  }

}
