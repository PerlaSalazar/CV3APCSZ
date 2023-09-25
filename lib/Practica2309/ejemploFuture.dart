import 'dart:math';
import 'package:flutter/material.dart';

class EjemploFutere extends StatefulWidget {
  const EjemploFutere({super.key});

  @override
  State<EjemploFutere> createState() => _EjemploFutere();
}

Color generarColorAleatorio() {
  Random random = Random();
  return Color.fromRGBO(
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
    1.0,
  );
}

class _EjemploFutere extends State<EjemploFutere> {
  Color colorNum = Colors.black; // Color inicial

  //late para indicar que posteriormente va a llegar un valor
  //para indicar que es una nueva solicitud
  late Future<int> numero;
  @override
  void initState() {
    super.initState();
    numero = obtenerNumero();
  }

  Future<int> obtenerNumero() {
    return Future.delayed(const Duration(seconds: 3), () {
      //return 10;
      return Random().nextInt(10);
    });
  }

  void textChange() {
    setState(() {
      obtenerNumero();
      colorNum = generarColorAleatorio();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: obtenerNumero(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return const CircularProgressIndicator();
              default:
                if (snapshot.hasError) {
                  return const Text('Error');
                } else if (snapshot.hasData) {
                  int data = snapshot.data!;
                  return Text(
                    data.toString(),
                    style: TextStyle(
                      color: colorNum,
                      // Color.fromARGB(255, 23, 5, 12),
                      fontSize: 55,
                    ),
                  );
                } else {
                  return const Text('No hay datos');
                }
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          textChange();
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
