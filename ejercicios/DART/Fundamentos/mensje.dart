class Mensaje {
  void saludar(String nombre, String apellido, String apodo) {
    print("hola $nombre $apellido, alias $apodo");
  }

  void darBienvenida(String nombre, String apellido, String? apodo) {
    print("hola $nombre $apellido, alias $apodo");
  }

  void despedirse({
    String nombre = "",
    String apellido = "",
    String apodo = "",
  }) {
    print("hola $nombre $apellido, alias $apodo");
  }

  void animar({
    required String nombre,
    required String apellido,
    String apodo = "",
  }) {
    print("hola $nombre $apellido, alias $apodo");
  }
}

void main() {
  final msg = Mensaje();
  msg.saludar("Juan", "Perez", "manito tu no eres el hombre bala");
  msg.darBienvenida("se le cayo", "el cubilete", null);
  msg.despedirse(apodo: "Crack");
  msg.despedirse();
}
