import 'package:flutter/material.dart';

void main() => runApp(const AppFloreria());

class AppFloreria extends StatelessWidget {
  const AppFloreria({super.key});

  @override
  Widget build(BuildContext context) {
    // Quitamos el const de MaterialApp porque FloreriaFilaColumna tiene elementos dinámicos
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FloreriaFilaColumna(),
    );
  }
}

class FloreriaFilaColumna extends StatelessWidget {
  const FloreriaFilaColumna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Floreria",
          style: TextStyle(color: Colors.white), // Color blanco para el título
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: const [
          Icon(Icons.medical_services, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.person, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // --- PRIMERA FILA ---
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.orange,
                      child: const Center(child: Text("Naranja", style: TextStyle(color: Colors.black))),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      color: Colors.yellow,
                      child: const Center(child: Text("Amarillo", style: TextStyle(color: Colors.black))),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // --- SEGUNDA FILA ---
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: const Color.fromARGB(255, 175, 99, 123),
                      child: const Center(child: Text("Magenta", style: TextStyle(color: Colors.black))),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      color: Colors.green,
                      child: const Center(child: Text("Verde", style: TextStyle(color: Colors.black))),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // --- TERCERA FILA ---
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      child: const Center(child: Text("Azul", style: TextStyle(color: Colors.black))),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      color: const Color.fromARGB(255, 201, 199, 91),
                      child: const Center(child: Text("Especial", style: TextStyle(color: Colors.black))),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}