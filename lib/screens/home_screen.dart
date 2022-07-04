import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';

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
                  leading: const Icon(Icons.circle),
                  title: const Text('Nombre de ruta'),
                  onTap: () {
                    // Cuando no tenemos definida la ruta:
                    // final route = MaterialPageRoute(builder: (context) => const Listview1Screen());
                    // Navigator.push(context, route);

                    // Cuando ya tenemos definida nuestra ruta
                    Navigator.pushNamed(context, 'card2');
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: 10));
  }
}
