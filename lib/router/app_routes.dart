import 'package:flutter/material.dart';
import 'package:material3_show_case/models/menu_option.dart';
import 'package:material3_show_case/screens/buttons_demos_screen.dart';
import 'package:material3_show_case/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final optionsMenu = <OptionMenu>[
    // OptionMenu(
    //     title: 'Home',
    //     route: HomeScreen.routeName,
    //     icon: Icons.home,
    //     screen: const HomeScreen()),
    OptionMenu(
      title: 'Buttons Demo',
      route: 'buttons_demo_screen',
      icon: Icons.touch_app_outlined,
      screen: const ButtonsDemoScreen(),
    ),
    OptionMenu(
      title: 'Cards Demo',
      route: 'cards_demo_screen',
      icon: Icons.badge_outlined,
      screen: const CardsDemoScreen(),
    ),
    OptionMenu(
      title: 'Chips Demo',
      route: 'chips_demo_screen',
      icon: Icons.catching_pokemon,
      screen: const ChipsDemoScreen(),
    ),
    OptionMenu(
      title: 'Dialogs Demo',
      route: 'dialogs_demo_screen',
      icon: Icons.chat,
      screen: const DialogsDemoScreen(),
    ),
    OptionMenu(
      title: 'ListTile Screen',
      route: 'list_tile_screen',
      icon: Icons.list,
      screen: const InProgresScreen(),
    ),
    OptionMenu(
      title: 'Navigation Bar Screen',
      route: 'navigation_bar_screen',
      icon: Icons.navigation_outlined,
      screen: const InProgresScreen(),
    ),
    OptionMenu(
      title: 'Navigation Rail Screen',
      route: 'navigation_rail_screen',
      icon: Icons.vertical_split,
      screen: const InProgresScreen(),
    ),
    OptionMenu(
      title: 'App Contador',
      route: 'App Contador',
      icon: Icons.numbers,
      screen: const ClassicScreenContador(),
    )
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    final Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({
      'home': (BuildContext context) => const HomeScreen(),
    });
    for (final option in optionsMenu) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }
}
