import 'animal.dart';

class Gato extends Animal {
  @override
  void dormir() {
    print("gato durmiendo");
  }
}

void main() {
  final gato = new Gato();
  gato.dormir();
}
