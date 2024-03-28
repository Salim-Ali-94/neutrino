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
                                            type: BottomNavigationBarType.fixed,
                                            onTap: (index) => switchTab!(index),
                                            currentIndex: tab,
                                            items: [BottomNavigationBarItem(icon: (tab == 0) ? ColorFiltered(colorFilter: ColorFilter.mode(nature, BlendMode.srcATop), child: Image.asset("assets/icons/house.png", width: 24)) : Image.asset("assets/icons/house.png", width: 24), label: ""),
                                                    BottomNavigationBarItem(icon: (tab == 1) ? ColorFiltered(colorFilter: ColorFilter.mode(nature, BlendMode.srcATop), child: Image.asset("assets/icons/stack.png", width: 24)) : Image.asset("assets/icons/stack.png", width: 24), label: ""),
                                                    BottomNavigationBarItem(icon: (tab == 2) ? ColorFiltered(colorFilter: ColorFilter.mode(nature, BlendMode.srcATop), child: Image.asset("assets/icons/signal.png", width: 32)) : Image.asset("assets/icons/signal.png", width: 32), label: ""),
                                                    BottomNavigationBarItem(icon: (tab == 3) ? ColorFiltered(colorFilter: ColorFilter.mode(nature, BlendMode.srcATop), child: Image.asset("assets/icons/details.png", width: 28)) : Image.asset("assets/icons/details.png", width: 28), label: "")]));

  }

}
