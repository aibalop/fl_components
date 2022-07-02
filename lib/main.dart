import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext buildContext) => const HomeScreen(),
        'listview1': (BuildContext buildContext) => const Listview1Screen(),
        'listview2': (BuildContext buildContext) => const Listview2Screen(),
        'card': (BuildContext buildContext) => const CardScreen(),
        'alert': (BuildContext buildContext) => const AlertScreen(),
      },
    );
  }
}
