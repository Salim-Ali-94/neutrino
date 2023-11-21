import "package:flutter/material.dart";
import "package:neutrino/utility/constants.dart";


class InfoCard extends StatelessWidget {

  InfoCard({ super.key });

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;

    // return Container(height: 160, width: screenWidth*0.48, padding: const EdgeInsets.all(20),
    return Container(height: 160, width: screenWidth*0.48, padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    // return Container(height: 170, width: screenWidth*0.48, padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                     decoration: BoxDecoration(color: green, borderRadius: BorderRadius.all(Radius.circular(10))),
                     
                     child: Column(children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start,
                                                  // children: [Text("Weight", style: TextStyle(fontFamily: "Futura", color: granite,
                                                  children: [Text("BMI", style: TextStyle(fontFamily: "Futura", color: granite,
                                                                                             fontWeight: FontWeight.w600, fontSize: 16)),
                                                             
                                                             Image.asset("assets/icons/scale.png", width: 32)]),
                                                             
                                              SizedBox(height: 5),
                                              
                                              Row(crossAxisAlignment: CrossAxisAlignment.baseline, textBaseline: TextBaseline.alphabetic,
                                                  children: [Text("76", style: TextStyle(color: granite, fontWeight: FontWeight.w600,
                                                                          fontFamily: "Futura", fontSize: 52)),

                                                             SizedBox(width: 5),

                                                             Text("kg/m\u00B2", style: TextStyle(color: granite, fontWeight: FontWeight.w500,
                                                                          fontFamily: "Futura", fontSize: 16))]),
                                                                          
                                                                          // Container(height: 9, padding: const EdgeInsets.symmetric(horizontal: 5), decoration: BoxDecoration(border: Border.all(color: granite, width: 1.5), borderRadius: BorderRadius.all(Radius.circular(50))), child: Text("Healthy", style: TextStyle(fontFamily: "Futura", fontWeight: FontWeight.w500, color: Colors.white, fontSize: 16)))]));
                                                                          // Container(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2), decoration: BoxDecoration(border: Border.all(color: granite, width: 1.5), borderRadius: BorderRadius.all(Radius.circular(50))), child: Text("Healthy", style: TextStyle(fontFamily: "Futura", fontWeight: FontWeight.w500, color: Colors.white, fontSize: 14)))]));
                                                                          
                                                                          // Row(mainAxisAlignment: MainAxisAlignment.end, children: [Container(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4), decoration: BoxDecoration(color: granite, borderRadius: BorderRadius.all(Radius.circular(50))), child: Text("Healthy", style: TextStyle(fontFamily: "Futura", fontWeight: FontWeight.w500, color: green, fontSize: 14)))])]));
                                                                          Row(children: [Container(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4), decoration: BoxDecoration(color: granite, borderRadius: BorderRadius.all(Radius.circular(50))), child: Text("Healthy", style: TextStyle(fontFamily: "Futura", fontWeight: FontWeight.w500, color: green, fontSize: 14)))])]));

                                                                          // Row(children: [Container(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4), decoration: BoxDecoration(color: granite, borderRadius: BorderRadius.all(Radius.circular(50))), child: Text("Underweight", style: TextStyle(fontFamily: "Futura", fontWeight: FontWeight.w500, color: Colors.white, fontSize: 14)))])]));
                                                                          // Row(mainAxisAlignment: MainAxisAlignment.end, children: [Container(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4), decoration: BoxDecoration(color: granite, borderRadius: BorderRadius.all(Radius.circular(50))), child: Text("Underweight", style: TextStyle(fontFamily: "Futura", fontWeight: FontWeight.w500, color: Colors.white, fontSize: 14)))])]));

  }

}
