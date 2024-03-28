import "package:flutter/material.dart";
import "package:neutrino/utility/constants.dart";
// safeareaview
import "package:http/http.dart" as http;
import "dart:convert";
import "dart:io";


class OptionCard extends StatelessWidget {

  final String image;
  final String category;
  final double gap;

  OptionCard({ super.key,
               required this.image,
               required this.gap,
               required this.category });

  void getAPI() async {

    var muscle = "biceps";
    final response = await http.get(Uri.parse("https://api.api-ninjas.com/v1/exercises?muscle=${muscle}"), headers: {"X-Api-Key": "dCBm1tk88dp0frxeM3ydNw==YM3OBQhZz8KWJC8C" });
    // ?muscle=biceps&difficulty=beginner&type=strength
    print("statusCode");
    print(response.statusCode);

    if (response.statusCode == 200) {

      final data = jsonDecode(response.body.toString());
      print(data);

    }

  }

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;

    // return Container(width: screenWidth*0.9, height: 100, padding: const EdgeInsets.all(10),
    // return GestureDetector(onTap: () => getAPI(), 
    return GestureDetector(onTap: () => Navigator.pushNamed(context, "/difficulty"),
                           child: Center(child: Container(width: screenWidth*0.9, height: 80, padding: const EdgeInsets.all(10), margin: EdgeInsets.only(bottom: gap),
                                                          decoration: BoxDecoration(color: blue, borderRadius: BorderRadius.all(Radius.circular(5))),
                                                          //  decoration: BoxDecoration(color: nectarine, borderRadius: BorderRadius.all(Radius.circular(10))),
                                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start,
                                                                      children: [Image.asset(image), Text(category, style: TextStyle(color: Colors.white, fontFamily: "Futura", fontWeight: FontWeight.w700, fontSize: 18))]))));
                                                                      // children: [Image.asset("assets/icons/meal.png"), Text("Meal plan", style: TextStyle(color: granite, fontFamily: "Futura", fontWeight: FontWeight.w500, fontSize: 18))]));

  }

}
