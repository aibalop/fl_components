import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext buildContext) => const HomeScreen(),
    'listview1': (BuildContext buildContext) => const Listview1Screen(),
    'listview2': (BuildContext buildContext) => const Listview2Screen(),
    'card': (BuildContext buildContext) => const CardScreen(),
    'alert': (BuildContext buildContext) => const AlertScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
