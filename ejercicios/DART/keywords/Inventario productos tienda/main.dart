import 'tienda.dart';
import 'producto.dart';

void main() {
  final producto1 = Producto("8963");
  final producto2 = Producto("7726");

  producto1.registrarVenta("Pala", 12.5, "pala de construccion");
  producto2.registrarVenta("Helado", 0.25, "Polito");

  Tienda.cambiarAnuncio("2x1 en Helados");

  producto1.resumen();
  producto2.resumen();

  print("Productos vendidos: ${Tienda.obtenerVentas()}");
}
