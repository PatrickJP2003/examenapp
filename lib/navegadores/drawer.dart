
import 'package:examen/main.dart';
import 'package:examen/screen/ejercicio02.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('Prueba'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Prueba() ) ),
          ),
           ListTile(
            title: Text('Prueba'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Ejercicio01() ) ),
          ),
         
          ListTile(
            title: Text('Ejercicio 02'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Ejercicio02() ) ),
          ),
        ],
      ),
    );

  }
}
