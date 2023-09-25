import 'package:flutter/material.dart';
import 'package:my_app/src/models/Producto.dart';

// ignore: must_be_immutable
class ProductosScreen extends StatelessWidget {
  ProductosScreen({
    super.key,
  });

  List<Producto> productos = [
    Producto(
        producto: 'Galletas',
        foto:
            'https://img.freepik.com/vector-premium/paquete-galletas-icono-plano-postre-dulce-envuelto_176411-5617.jpg',
        stock: 30),
    Producto(
        producto: 'Refrescos',
        foto:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIwodP0TN5IGQbR9TZ4Ch7_57wNEVaMLkpiA&usqp=CAU',
        stock: 15),
    Producto(
        producto: 'Gomitas',
        foto:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsSuMVI0Xrm9NUDAxRuookhPbSF41OwT1PCA&usqp=CAU',
        stock: 0),
  ];

  // final List<String> imageUrls = [
  //   'https://img.freepik.com/vector-premium/paquete-galletas-icono-plano-postre-dulce-envuelto_176411-5617.jpg',
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEjMr0VySnKS2NDeSsz8jwg2KDQnBCgZxuFw&usqp=CAU',
  //   'https://elceo.com/wp-content/uploads/2023/06/sbritas.jpg',
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('lista de Productos')),
      //va a construir algo a partir de un origen de datos
      body: ListView.builder(
        itemCount: productos.length,
        itemBuilder: (context, index) {
          //return Text(contactos[index].nombre);
          return ListTile(
            // leading: Image.network(
            //   // imageUrls[index],
            //   productos[index].foto,
            //   width: 50.0, //  ancho
            //   height: 50.0, // Alto
            // ),

            leading: CircleAvatar(
                backgroundImage: NetworkImage('${productos[index].foto}')
                //'https://static.wikia.nocookie.net/doblaje/images/5/5c/HugoClub.jpg/revision/latest?cb=20191121031948&path-prefix=es'

                ),
            // title: Text('Imagen $index'),
            title: Text(productos[index].producto),
            subtitle: Text(productos[index].stock.toString()),
            // tileColor: Colors.{}grey,
            tileColor: (productos[index].stock == 0) ? Colors.red : Colors.grey,
            trailing: const Icon(Icons.arrow_right),
          );
        },
      ),
    );
  }
}
