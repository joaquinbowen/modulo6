import 'tienda.dart';

class Producto {
  final String codigo;
  late String descripcion;
  late double precio;
  dynamic observacion;

  Producto(this.codigo);

  void registrarVenta(String desc, double precio, dynamic observacion) {
    this.descripcion = desc;
    this.precio = precio;
    this.observacion = observacion;
    Tienda.aumentarVentas();
  }

  void resumen() {
    print(Tienda.nombre);
    print(Tienda.anuncio);
    print("Producto");
    print(codigo);
    print(descripcion);
    print(precio);
    print(observacion);
  }
}
