
void main() {
  //print("Operacion 1");
  //Future.delayed(Duration(seconds: 3), () => {print("Operacion 2")});
  //print("Operacion 3");
  //print("Operacion 4");

  print("estoy en la casa");
  pedirPizza();
  print("viendo la tv");

}

Future<String> prepararPizza() {
  return Future.delayed(Duration(seconds: 5), () => "pizza entregada");
}

void pedirPizza() async {
  print("Llamando a la pizzeria");
  final mensaje = await prepararPizza();
  print(mensaje);
  print("A comer la picsa");    
}
