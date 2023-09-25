import 'package:flutter/material.dart';
import 'package:my_app/Practica2309/ejemploFuture.dart';
//import 'package:my_app/src/screen/contactos_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Contador(),
      //home: ContactosScreen(),
      //home: ProductosScreen(),
      home: const EjemploFutere(),
      //cambiar estilo
      theme: ThemeData(useMaterial3: true),
    );
  }
}

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primer ejercicio'),
      ),
      body: const Center(
        child: Text('Hola Mundo'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_circle),
      ),
    );
  }
}

class Contador extends StatefulWidget {
  const Contador(
      {
      //this.color = const Color(0xFFFFE306),
      super.key});

  //final Color color;

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int cont = 1;
  Color lightbulbColor = Colors.yellow;

  String mensaje = "Hola mundo";

  void toggleLightbulbColor() {
    setState(() {
      //primera solución
      lightbulbColor = (lightbulbColor == Colors.yellow)
          ? Colors.grey // Cambia el color a gris
          : Colors.yellow; // Cambia el color a amarillo
      cont++;
      if (cont == 5) {
        lightbulbColor = Colors.red;
      }
      // Segunda Solución
      // cont++;
      // if (cont == 5) {
      //   foco = Colors.red;
      // } else if (foco == (foco = Colors.amber)) {
      //   foco = Colors.grey;
      // } else {
      //   foco = Colors.amber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('Ejercicio cambiar color'), elevation: 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Valor de contador',
              style: TextStyle(fontSize: 35, color: Colors.blue),
            ),
            Text(
              cont.toString(),
              style: const TextStyle(
                fontSize: 50,
                color: Colors.red,
                fontWeight: FontWeight.bold,
                //backgroundColor: Colors.black
              ),
            ),
            Icon(
              Icons.lightbulb,
              color: lightbulbColor,
              size: 50,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: toggleLightbulbColor,

        child: const Icon(Icons.add),

        // child: const Icon(Icons.add_circle),
      ),
    );
  }
}
