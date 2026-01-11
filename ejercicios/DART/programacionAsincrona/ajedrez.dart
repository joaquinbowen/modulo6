void main(){
  partida();

}


Future<String> movimientoJugador1(String movimiento){
  return Future.delayed(Duration(seconds: 4),()=>"Jugador uno ha emepezado con $movimiento");
}


Future<String> movimientoJugador2(String movimiento){
  return Future.delayed(Duration(seconds: 2),()=>"Jugador dos ha segudido con $movimiento");
}

void partida()async{
  print("Empieza la partida");
  print("Jugadores se dan la mano");
  print("Empieza la partida");
  print("Jugador dos toca el reloj");
  final mov1= await movimientoJugador1("E4");
  print(mov1);
  print("jugador 1 toca el reloj");
  final mov2= await movimientoJugador2("E5");
  print(mov2);

}