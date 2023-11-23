import "package:flutter/material.dart";
import "package:neutrino/utility/constants.dart";
import "package:neutrino/widgets/info_card.dart";
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';


class Home extends StatelessWidget {

  Home({ super.key });

  final percent = 0.64;
  final health_metrics = [InfoCard(category: "sleep", value: 6.2),
                          InfoCard(category: "bmi", value: 23.7),
                          InfoCard(category: "water", value: 4.3),
                          InfoCard(category: "heart rate", value: 123)];

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(backgroundColor: granite,
                    body: SingleChildScrollView(physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),

                                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(margin: const EdgeInsets.only(top: 50), width: screenWidth*0.9,
                                                                                                                                               child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                                                             children: [Text("Welcome,", style: TextStyle(color: Colors.white, fontFamily: "Futura",
                                                                                                                                                                                                          fontWeight: FontWeight.w500, fontSize: 16)),

                                                                                                                                                                        Row(crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                                                                            children: [Text("Salim".toUpperCase(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700,
                                                                                                                                                                                                                                    fontFamily: "Getai", fontSize: 32)),
                                                                                                                                    
                                                                                                                                                                                       Image.asset("assets/icons/flame.png", width: 36)])]))]),

                                                                        SizedBox(height: 5),

                                                                        Row(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(width: 280, height: 280,
                                                                                                                                             child: LiquidCircularProgressIndicator(value: percent, borderWidth: 0, direction: Axis.horizontal,
                                                                                                                                                                                    valueColor: AlwaysStoppedAnimation(nature),
                                                                                                                                                                                    backgroundColor: Colors.transparent,
                                                                                                                                                                                    borderColor: Colors.transparent))]),

                                                                        SizedBox(height: 30),

                                                                        Container(padding: EdgeInsets.only(left: screenWidth*0.05), child: Text("Health Metrics", style: TextStyle(fontFamily: "Futura", fontSize: 18,
                                                                                                                                                                                   color: Colors.white, fontWeight: FontWeight.w500))),
                                                                                                                                                                                   
                                                                        SizedBox(height: 5),

                                                                        GridView.builder(itemCount: health_metrics.length, shrinkWrap: true, physics: NeverScrollableScrollPhysics(), padding: EdgeInsets.only(left: screenWidth*0.05, right: screenWidth*0.05), primary: false,
                                                                                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: screenWidth*0.48 / 160, crossAxisSpacing: 6, mainAxisSpacing: 6, crossAxisCount: 2),
                                                                                         itemBuilder: (_, index) => health_metrics[index]),

                                                                        SizedBox(height: screenWidth)])));

  }

}
