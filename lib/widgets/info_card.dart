import "package:flutter/material.dart";
import "package:neutrino/utility/constants.dart";


class InfoCard extends StatelessWidget {

  InfoCard({ super.key });

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;

    return Container(height: 160, width: screenWidth*0.48, padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                     decoration: BoxDecoration(color: sky, borderRadius: BorderRadius.all(Radius.circular(10))),

                     child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [Text("BMI", style: TextStyle(fontFamily: "Futura", color: granite,
                                                                                          fontWeight: FontWeight.w600, fontSize: 16)),
                                                             
                                                             Image.asset("assets/icons/scale.png", width: 32)]),

                                              Column(children: [Row(crossAxisAlignment: CrossAxisAlignment.baseline, textBaseline: TextBaseline.alphabetic,
                                                                    children: [Text("23.7", style: TextStyle(color: granite, fontWeight: FontWeight.w600,
                                                                                                             // fontFamily: "Futura", fontSize: 52)),
                                                                                                             // fontFamily: "Futura", fontSize: 42)),
                                                                                                             // fontFamily: "Futura", fontSize: 50)),
                                                                                                             fontFamily: "Futura", fontSize: 48)),

                                                                              SizedBox(width: 5),

                                                                              Text("kg/m\u00B2", style: TextStyle(color: granite, fontWeight: FontWeight.w500,
                                                                                                                  fontFamily: "Futura", fontSize: 16))]),

                                                              // Row(mainAxisAlignment: MainAxisAlignment.end, children: [Container(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4), decoration: BoxDecoration(color: granite, borderRadius: BorderRadius.all(Radius.circular(50))), child: Text("Healthy", style: TextStyle(fontFamily: "Futura", fontWeight: FontWeight.w500, color: Colors.white, fontSize: 14)))])]));
                                                              // Row(children: [Container(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3), decoration: BoxDecoration(border: Border.all(color: Colors.white), borderRadius: BorderRadius.all(Radius.circular(50))), child: Text("Healthy", style: TextStyle(fontFamily: "Futura", fontWeight: FontWeight.w500, color: granite, fontSize: 14)))])]));
                                                              // Row(children: [Container(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4), decoration: BoxDecoration(color: granite, borderRadius: BorderRadius.all(Radius.circular(50))), child: Text("Healthy", style: TextStyle(fontFamily: "Futura", fontWeight: FontWeight.w500, color: green, fontSize: 14)))])]));
                                                              Row(children: [Container(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                                                                                       decoration: BoxDecoration(color: granite, borderRadius: BorderRadius.all(Radius.circular(50))),
                                                                                       child: Text("Healthy", style: TextStyle(fontFamily: "Futura", fontWeight: FontWeight.w500,
                                                                                                                               color: Colors.white, fontSize: 14)))])])]));

  }

}
