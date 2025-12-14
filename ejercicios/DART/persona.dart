class Persona {
  String? nombre;
  int edad = 0;
  double? estatura;

  Persona(String nombre, int edad, double estatura) {
    this.nombre = nombre;
    this.edad = edad;
    this.estatura = estatura;
  }
}

void main() {
  Persona p;
  p = new Persona("PEpe", 45, 1.69);
  print("Nombre: ${p.nombre}");
  print("Edad: ${p.edad}");
  print("Estatura: ${p.estatura}");
}
