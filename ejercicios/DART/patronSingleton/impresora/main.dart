import 'impresora.dart';

void main(){
  final impresora1=ImpresoraCentral();
  impresora1.conectar();
  impresora1.imprimir("hola.png");

  final impresora2=ImpresoraCentral();
  impresora2.imprimir("jop.pdf");

  print(impresora2==impresora1);

  print(impresora2.estaConectada);

}