import "package:flutter/material.dart";
import "package:neutrino/utility/constants.dart";


class InfoCard extends StatelessWidget {

  final String category;
  final double value;

  InfoCard({ super.key,
             required this.category,
             required this.value });

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;

    return Container(height: 160, width: screenWidth*0.48, padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                     decoration: BoxDecoration(color: colours[category], borderRadius: BorderRadius.all(Radius.circular(10))),

                     child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [Text(category == "bmi" ? "BMI" : "${category[0].toUpperCase()}${category.substring(1)}",
                                                                  style: TextStyle(fontFamily: "Futura", color: granite,
                                                                                   fontWeight: FontWeight.w600, fontSize: 16)),
                                                             
                                                             Image.asset(icons[category]!, width: 32)]),

                                              Column(children: [Row(crossAxisAlignment: CrossAxisAlignment.baseline, textBaseline: TextBaseline.alphabetic,
                                                                    children: [Text("${(value == value.toInt()) ? value.toInt() : value}".toString(),
                                                                                    style: TextStyle(color: granite, fontWeight: FontWeight.w600,
                                                                                                     fontFamily: "Futura", fontSize: screenWidth*0.109)),

                                                                              SizedBox(width: 5),

                                                                              Text(units[category]!, style: TextStyle(color: granite, fontWeight: FontWeight.w500,
                                                                                                                      fontFamily: "Futura", fontSize: 16))]),

                                                              Row(children: [Container(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                                                                                       decoration: BoxDecoration(color: granite, borderRadius: BorderRadius.all(Radius.circular(50))),
                                                                                       child: Text((category == "bmi") ? (value < 18.5) ? "Underweight" : (value >= 18.5 && value < 25) ? "Ideal" : (value >= 25 && value < 30) ? "Overweight" : (value > 30) ? "Obese" : "" :
                                                                                                   (category == "sleep") ? (value < 7) ? "Deprived" : (value >= 7 && value <= 10) ? "Ideal" : (value > 10) ? "Excess" : "" :
                                                                                                   (category == "water") ? (value < 3.7) ? "Dehydrated" : (value >= 3.7 && value < 10) ? "Ideal" : (value >= 10 && value < 20) ? "Dangerous" : (value > 20) ? "Excess" : "" :
                                                                                                   (category == "heart rate") ? (value < 40) ? "Weak" : (value >= 40 && value <= 60) ? "Healthy" : (value > 60 && value <= 100) ? "Regular" : (value > 100) ? "Dangerous" : ""
                                                                                                   : "", style: TextStyle(fontFamily: "Futura", fontWeight: FontWeight.w500,
                                                                                                                          color: Colors.white, fontSize: 14)))])])]));

  }

}
