import "package:flutter/material.dart";
import "package:neutrino/utility/constants.dart";
import "package:neutrino/widgets/nav_bar.dart";
import "package:neutrino/screens/home.dart";
import "package:neutrino/screens/analytics.dart";
import "package:neutrino/utility/glass_box.dart";


class ScreenManager extends StatefulWidget {

  const ScreenManager({ super.key });

  @override
  State<ScreenManager> createState() => _ScreenManagerState();

}

class _ScreenManagerState extends State<ScreenManager> {

  int screen = 0;

  List<Widget> screens = [Home(),
                          Home(),
                          Analytics()];

  void screenTransition(int index) {

    setState(() {

      screen = index;

    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(backgroundColor: granite, extendBody: true,
                    bottomNavigationBar: GlassBox(backdrop: BottomNavBar(tab: screen, switchTab: (screen) => screenTransition(screen))),
                    body: SafeArea(child: screens[screen], bottom: false));

  }

}