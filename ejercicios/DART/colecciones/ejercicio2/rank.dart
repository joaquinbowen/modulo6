void main() {
  Map<String, int> puntajes = {
    "Faker": 10000,
    "Keria": 8000,
    "Zeus": 7000,
    "Chovy": 5000,
  };

  print(puntajes.keys);
  print(puntajes["Faker"]);
  puntajes["Keria"] = 8500;
  puntajes["Uzi"] = 7700;
  puntajes.remove("Chovy");
  print(puntajes);
}
