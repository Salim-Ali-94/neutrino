import "package:flutter/material.dart";
import "package:neutrino/utility/constants.dart";


class BottomNavBar extends StatelessWidget {

  final void Function(int)? switchTab;
  BottomNavBar({ super.key, required this.switchTab });

  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(backgroundColor: Colors.transparent, elevation: 0,
                               onTap: (index) => switchTab!(index),
                               selectedItemColor: green,
                               unselectedItemColor: Colors.white,
                               items: const [BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
                                             BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
                                             BottomNavigationBarItem(icon: Icon(Icons.settings), label: "")]);

  }

}