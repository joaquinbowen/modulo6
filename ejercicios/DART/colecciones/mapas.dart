void main() {
  Map<String, int> poblacion = {
    "Quito": 2000000,
    "Cuenca": 600000,
    "Guayaquil": 2800000,
  };

  print(poblacion);
  print(poblacion.keys);
  print(poblacion.values);
  print(poblacion.containsKey("Ambato"));
  print(poblacion["Cuenca"]);
  poblacion["Loja"] = 400000;
  print(poblacion);
  poblacion["Quito"] = 10;
  print(poblacion);
  poblacion.remove("Cuenca");
  print(poblacion);

  Map<String, List<String>> regiones = {
    "Costa": ["El oro", "Manabi"],
    "Sierra": ["Quito", "Loja", "Cuenca"],
    "Oriente": ["Napo", "Pastaza"],
  };
  print(regiones);
  print("---------------------------");
  print(regiones["Sierra"]);
  print(regiones["Costa"]![1]);
}
