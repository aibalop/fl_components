import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        icon: Icons.home,
        name: 'home',
        screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.list,
        name: 'Listview tipo 1',
        screen: const Listview1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list_outlined,
        name: 'Listview tipo 2',
        screen: const Listview2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.add_alert,
        name: 'Alertas -Alerts',
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.card_giftcard,
        name: 'Tarjetas - Cards',
        screen: const CardScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.name: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext buildContext) => const HomeScreen(),
  //   'listview1': (BuildContext buildContext) => const Listview1Screen(),
  //   'listview2': (BuildContext buildContext) => const Listview2Screen(),
  //   'card': (BuildContext buildContext) => const CardScreen(),
  //   'alert': (BuildContext buildContext) => const AlertScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
