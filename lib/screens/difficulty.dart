import "package:flutter/material.dart";
import "package:neutrino/utility/constants.dart";
// import "package:neutrino/widgets/info_card.dart";
// import "package:liquid_progress_indicator_v2/liquid_progress_indicator.dart";


class Difficulty extends StatelessWidget {

  Difficulty({ super.key });

  @override
  Widget build(BuildContext context) {

    // final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(backgroundColor: granite,
                    body: SingleChildScrollView(physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),

                                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [Text("DIFFUCULTY")])));

  }

}
