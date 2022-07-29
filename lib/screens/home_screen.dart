import 'package:flutter/material.dart';
import 'package:fl_components/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(
                    AppRoutes.menuOptions[index].icon,
                    color: Colors.indigo,
                  ),
                  title: Text(AppRoutes.menuOptions[index].name),
                  onTap: () {
                    // Cuando no tenemos definida la ruta:
                    // final route = MaterialPageRoute(builder: (context) => const Listview1Screen());
                    // Navigator.push(context, route);

                    // Cuando ya tenemos definida nuestra ruta
                    Navigator.pushNamed(
                        context, AppRoutes.menuOptions[index].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: AppRoutes.menuOptions.length));
  }
}
