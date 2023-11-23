import "package:flutter/material.dart";
import "package:neutrino/utility/constants.dart";
import "package:neutrino/widgets/info_card.dart";
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';


class Home extends StatelessWidget {

  const Home({ super.key });

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
                                                                                                                                                                                                                                                             
                                                                        SizedBox(height: 10),

                                                                        Row(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(width: 240, height: 240, 
                                                                                                                                            //  child: LiquidCircularProgressIndicator(value: 0.62, borderWidth: 0, direction: Axis.vertical,
                                                                                                                                             child: LiquidCircularProgressIndicator(value: 0.42, borderWidth: 0, direction: Axis.horizontal,
                                                                                                                                                                                    valueColor: AlwaysStoppedAnimation(blue),
                                                                                                                                                                                    backgroundColor: Colors.transparent,
                                                                                                                                                                                    borderColor: Colors.transparent))]),

                                                                        SizedBox(height: 20),

                                                                        Container(padding: EdgeInsets.only(left: screenWidth*0.05), child: Text("Health Metrics", style: TextStyle(fontFamily: "Futura", fontSize: 18,
                                                                                                                                                                                   color: Colors.white, fontWeight: FontWeight.w500))),
                                                                                                                                                                                   
                                                                        SizedBox(height: 5),
                                                                        
                                                                        InfoCard()])));

  }

}
