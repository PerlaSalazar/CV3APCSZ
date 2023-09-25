import 'package:flutter/material.dart';
import 'package:my_app/src/models/Persona.dart';

// ignore: must_be_immutable
class ContactosScreen extends StatelessWidget {
  ContactosScreen({super.key});

  List<Persona> contactos = [
    Persona(nombre: 'Perla', foto: ''),
    Persona(nombre: 'Luis', foto: ''),
    Persona(nombre: 'paco', foto: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('lista de Contactos')),
      //va a construir algo a partir de un origen de datos
      body: ListView.builder(
        itemCount: contactos.length,
        itemBuilder: (context, index) {
          //return Text(contactos[index].nombre);
          return ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/doblaje/images/5/5c/HugoClub.jpg/revision/latest?cb=20191121031948&path-prefix=es'),
            ),
            title: Text(contactos[index].nombre),
            subtitle: const Text('apellidos'),
            //  titleColor: Colors.time
            trailing: const Icon(Icons.arrow_right),
          );
        },
      ),
    );
  }
}
