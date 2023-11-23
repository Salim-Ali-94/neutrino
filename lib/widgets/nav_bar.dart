import "package:flutter/material.dart";
import "package:neutrino/utility/constants.dart";


class BottomNavBar extends StatelessWidget {

  final int tab;
  final void Function(int)? switchTab;
  BottomNavBar({ super.key,
                 required this.switchTab,
                 required this.tab });

  @override
  Widget build(BuildContext context) {

    return Theme(data: ThemeData(splashColor: Colors.transparent, highlightColor: Colors.transparent),
                 child: BottomNavigationBar(backgroundColor: Colors.transparent, elevation: 0,
                                            onTap: (index) => switchTab!(index),
                                            currentIndex: tab,
                                            // selectedItemColor: purple,
                                            // selectedItemColor: granite,
                                            // unselectedItemColor: Colors.white,
                                            items: [BottomNavigationBarItem(icon: (tab == 0) ? ColorFiltered(colorFilter: ColorFilter.mode(nature, BlendMode.srcATop), child: Image.asset("assets/icons/home.png", width: 24)) :  Image.asset("assets/icons/home.png", width: 24), label: ""),
                                                    BottomNavigationBarItem(icon: (tab == 1) ? ColorFiltered(colorFilter: ColorFilter.mode(nature, BlendMode.srcATop), child: Image.asset("assets/icons/stack.png", width: 24)) : Image.asset("assets/icons/stack.png", width: 24), label: ""),
                                                    BottomNavigationBarItem(icon: (tab == 2) ? ColorFiltered(colorFilter: ColorFilter.mode(nature, BlendMode.srcATop), child: Image.asset("assets/icons/stats.png", width: 30)) : Image.asset("assets/icons/stats.png", width: 30), label: "")]));

  }

}
