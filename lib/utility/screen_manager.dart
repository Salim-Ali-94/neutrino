import "package:flutter/material.dart";
import "package:neutrino/utility/constants.dart";
import "package:neutrino/widgets/nav_bar.dart";
import "package:neutrino/screens/home.dart";


class ScreenManager extends StatefulWidget {

  const ScreenManager({ super.key });

  @override
  State<ScreenManager> createState() => _ScreenManagerState();

}

class _ScreenManagerState extends State<ScreenManager> {

  int current_screen = 0;
  List<Widget> screens = [const Home(),];

  void screenTransition(int screen) {

    setState(() {

      current_screen = screen;

    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(backgroundColor: granite, extendBody: true,
                    bottomNavigationBar: BottomNavBar(switchTab: (screen) => screenTransition(screen)),
                    body: SafeArea(child: screens[current_screen]));

  }

}