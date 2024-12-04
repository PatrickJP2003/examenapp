
import 'package:examen/navegadores/drawer.dart';
import 'package:flutter/material.dart';

class Ejercicio02 extends StatefulWidget {
  const Ejercicio02({super.key});

  @override
  _Ejercicio02State createState() => _Ejercicio02State();
}

class _Ejercicio02State extends State<Ejercicio02> {
  final TextEditingController _wController = TextEditingController();
  final TextEditingController _rController = TextEditingController();
  String _resultado = '';

  void _calcularDistancia() {
    double w = double.tryParse(_wController.text) ?? 0;
    double r = double.tryParse(_rController.text) ?? 0;
    double t = 25;
    double distancia = w * r * t;
    setState(() {
      _resultado = 'Distancia recorrida: ${distancia.toStringAsFixed(2)} metros';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cálculo Distancia Carrusel',
          style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
        backgroundColor: const Color.fromRGBO(224, 51, 51, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Ingrese la velocidad angular (w) en radianes por segundo y el radio (r) del carrusel en metros:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _wController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Velocidad Angular (w) en rad/s',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _rController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Radio (r) del carrusel en metros',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _calcularDistancia,
              child: const Text('Calcular Distancia'),
            ),
            const SizedBox(height: 20),
            Text(
              _resultado,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
