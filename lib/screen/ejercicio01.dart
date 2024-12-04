import 'package:examen/navegadores/drawer.dart';
import 'package:flutter/material.dart';


class Ejercicio001 extends StatefulWidget {
  const Ejercicio001 ({super.key});

  @override
  _Ejercicio01State createState() => _Ejercicio01State();
}

class _Ejercicio01State extends State<Ejercicio01> {
  final TextEditingController _controllerHi = TextEditingController();
  final TextEditingController _controllerT = TextEditingController();
  String _resultado = '';

  void _calcularLanzamiento() {
    double hi = double.tryParse(_controllerHi.text) ?? 0;
    double t = double.tryParse(_controllerT.text) ?? 0;
    double a = 20; // Aceleración en m/s²
    double h = hi + 0.5 * a * t * t; // Fórmula para la altura final

    if (h >= 1000) {
      setState(() {
        _resultado = '¡Lanzamiento exitoso! Altura alcanzada: ${h.toStringAsFixed(2)} metros.';
      });
    } else {
      setState(() {
        _resultado = '¡Lanzamiento fallido! Altura alcanzada: ${h.toStringAsFixed(2)} metros.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejercicio 01',
          style: TextStyle(
            color: Colors.black, // Título negro
          ),
        ),
        backgroundColor: const Color.fromRGBO(224, 51, 51, 1), // Fondo rojo
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Ingrese la altura inicial (hi) y el tiempo (t) para calcular la altura final del cohete:',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _controllerHi,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Altura Inicial (hi) en metros',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _controllerT,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Tiempo (t) en segundos',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calcularLanzamiento,
              child: const Text('Calcular'),
            ),
            const SizedBox(height: 20),
            Text(
              _resultado,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
