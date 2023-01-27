import 'package:fl_components/screens/listview1_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text("Nombre de la ruta"),
                  onTap: () {
                    /* final route = MaterialPageRoute(
                        builder: (context) => const ListView1Screen());
                    Navigator.push(context, route); */
                    Navigator.pushNamed(context, 'alert');
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: 100));
  }
}
