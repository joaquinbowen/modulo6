import 'servidorCorreo.dart';

void main(){
  final con1=Servidorcorreo();
  final con2=Servidorcorreo();

  con1.conectar();
  con1.enviarCorreo("JUan Espinoza", "FAlta grave");
  con2.enviarCorreo("Juan Mecanico", "JAAJAJAJ");

  print(con1==con2);

  print("");
  print(con1.estaConectado);

  con2.desconectar();


}