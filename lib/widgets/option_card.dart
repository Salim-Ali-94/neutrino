import "package:flutter/material.dart";
import "package:neutrino/utility/constants.dart";
// safeareaview


class OptionCard extends StatelessWidget {

  OptionCard({ super.key });

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;

    // return Container(width: screenWidth*0.9, height: 100, padding: const EdgeInsets.all(10),
    return GestureDetector(onTap: () => print("option card"), 
                           child: Center(child: Container(width: screenWidth*0.9, height: 80, padding: const EdgeInsets.all(10),
                                                          decoration: BoxDecoration(color: blue, borderRadius: BorderRadius.all(Radius.circular(5))),
                                                          //  decoration: BoxDecoration(color: nectarine, borderRadius: BorderRadius.all(Radius.circular(10))),
                                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start,
                                                                      children: [Image.asset("assets/icons/meal.png"), Text("Meal plans", style: TextStyle(color: Colors.white, fontFamily: "Futura", fontWeight: FontWeight.w700, fontSize: 18))]))));
                                                                      // children: [Image.asset("assets/icons/meal.png"), Text("Meal plan", style: TextStyle(color: granite, fontFamily: "Futura", fontWeight: FontWeight.w500, fontSize: 18))]));

  }

}
