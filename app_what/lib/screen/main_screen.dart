import 'package:app_what/screen/pantalla1.dart';
import 'package:app_what/screen/pantalla2.dart';
import 'package:app_what/screen/pantalla3.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inicio"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.square),
            title: Text("Pantalla1 Container"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PantallaContainer()));
            },
          ),Divider(),
          ListTile(
            leading: Icon(Icons.view_module,color: Colors.pink,),
            title: Text("Pantalla2 Column y Row"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PantallaColumnRow()));
            },
          ),Divider(),
          ListTile(
            leading: Icon(Icons.power,color: Colors.red,),
            title: Text("Pantalla3 Elementos UI"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PantallaElementosUI()));

            },
          )
        ],
      ),
    );
  }
}