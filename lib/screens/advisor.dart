import "package:flutter/material.dart";
import "package:neutrino/utility/constants.dart";
import "package:neutrino/widgets/option_card.dart";


class Advisor extends StatelessWidget {

  const Advisor({ super.key });

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(backgroundColor: granite,
                    body: SingleChildScrollView(physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                                                // child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(margin: EdgeInsets.only(top: 30, left: screenWidth*0.05), child: Text("Guides", style: TextStyle(color: Colors.white, fontFamily: "Futura", fontSize: 24, fontWeight: FontWeight.w700))), OptionCard()])));
                                                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(margin: EdgeInsets.only(top: 30, left: screenWidth*0.05), child: Text("Guides", style: TextStyle(color: Colors.white, fontFamily: "Futura", fontSize: 24, fontWeight: FontWeight.w700))),
                                                                                                                       ListView.separated(scrollDirection: Axis.vertical, itemCount: categories.length,
                                                                                                                                          physics: NeverScrollableScrollPhysics(),
                                                                                                                                          shrinkWrap: true, primary: false,
                                                                                                                                          separatorBuilder: (context, index) => SizedBox(width: 8),
                                                                                                                                          itemBuilder: (context, index) => OptionCard(category: categories[index]["category"], image: categories[index]["image"], gap: (index != categories.length - 1) ?  10 : 0))])));

  }

}
