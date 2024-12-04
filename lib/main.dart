import 'package:examen/navegadores/drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Prueba());
}

class Prueba extends StatelessWidget {
  const Prueba({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Cuerpo(),
    );
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Prueba',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: const Color.fromRGBO(224, 51, 51, 1),
      ),
      body: Stack(
        children: [
          // Fondo con color sólido
          Positioned.fill(
            child: Container(
              color: Colors.blueGrey.shade100, // Fondo de color sólido
            ),
          ),
          // Contenido centrado
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Prueba",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                pagina_btn(context),
                const SizedBox(height: 40),
                const Text(
                  'Nombre : Patrick Sanchez',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Usuario de GitHub: PatrickJP2003',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: const MyDrawer(),
    );
  }
}

Widget pagina_btn(BuildContext context) {
  return ElevatedButton.icon(
    onPressed: () => navegar02(context),
    label: const Text("Ir a Ejercicio 01"),
    icon: const Icon(Icons.navigation_outlined),
  );
}

void navegar02(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => const Ejercicio01()));
}
