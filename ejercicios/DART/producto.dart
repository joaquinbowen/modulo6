class Producto {
  String codigo = "";
  String nombre = "";
  String? descripcion;
  bool activo = true;
  double precio = 0.0;
  int? stock;
}

void main() {
  Producto p1 = new Producto();
  p1.codigo = "001";
  p1.nombre = "Pablo";
  p1.descripcion = "alo";
  p1.activo = false;
  p1.precio = 0.5;
  p1.stock = 78;
  print("Codigo: ${p1.codigo}");
  print("Nombre: ${p1.nombre} ");
  print("Descripcion: ${p1.descripcion}");
  print("Activo: ${p1.activo}");
  print("Precio: ${p1.precio}");
  print("Stock: ${p1.stock}");

  var p2 = Producto();
  p2.codigo = "002";
  p2.nombre = "Pedro";
  p2.descripcion = "adios";
  p2.activo = false;
  p2.precio = 0.40;
  p2.stock = 7780;
  print("Codigo: ${p2.codigo}");
  print("Nombre: ${p2.nombre} ");
  print("Descripcion: ${p2.descripcion}");
  print("Activo: ${p2.activo}");
  print("Precio: ${p2.precio}");
  print("Stock: ${p2.stock}");

  final p3 = Producto();
  p3.codigo = "003";
  p3.nombre = "Palo";
  p3.descripcion = "elo";
  p3.activo = false;
  p3.precio = 10.45;
  p3.stock = 7008;
  print("Codigo: ${p3.codigo}");
  print("Nombre: ${p3.nombre} ");
  print("Descripcion: ${p3.descripcion}");
  print("Activo: ${p3.activo}");
  print("Precio: ${p3.precio}");
  print("Stock: ${p3.stock}");
}
