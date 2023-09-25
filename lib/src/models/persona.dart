class Persona {
  String nombre;
  String? foto;

//constructor -> inicializar variables
//parametros por posicion  es por orden
  //Persona(this.nombre, foto);

  //parametros por nombre no importa el orden
  Persona({required this.nombre, foto});
}
