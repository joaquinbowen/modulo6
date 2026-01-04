void main() {
  List<String> ciudades = ["Quito", "Guayaquil", "Cuenca", "Loja", "Quito"];
  print(ciudades);

  ciudades.add("Esmeraldas");
  print(ciudades);
  //ciudades.add(2);

  print(ciudades[1]);
  ciudades.remove("Esmeraldas");
  print(ciudades);

  List<List<int>> numeros = [
    [1, 2, 3],
    [2, 3, 6, 4],
    [3, 6, 9],
  ];
  print(numeros[0][1]);
}

class Ciudad {
  String? nombre;
  int? poblacion;

  Ciudad(this.nombre, this.poblacion);
}
