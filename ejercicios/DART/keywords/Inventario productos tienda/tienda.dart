class Tienda {
  static const String nombre = "Tuti";
  static late String anuncio;
  static int _productosVendidos = 0;

  static cambiarAnuncio(String txt) {
    anuncio = txt;
  }

  static void aumentarVentas() {
    _productosVendidos++;
  }

  static int obtenerVentas() {
    return _productosVendidos;
  }
}
