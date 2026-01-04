class Libro {
  String ISBN;
  String titulo;
  int? numeroPaginas;
  String? descripcion;

  Libro(this.ISBN, this.titulo, int numeroPaginas, String descripcion) {
    this.numeroPaginas = numeroPaginas;
    this.descripcion = descripcion;
  }
}

void main() {
  Libro lib = Libro("789456", "Hellouda", 1087, "Drama");
  Libro lib2 = Libro("213568", "Wooow", 196, "Dramaaaaa");
  Libro lib3 = Libro("892563", "Conteiner", 589, "Comedia");
  print(
    "ISBN:${lib.ISBN} Titulo:${lib.titulo} Numero de paginas:${lib.numeroPaginas} Descripcion:${lib.descripcion}",
  );
  print(
    "ISBN:${lib2.ISBN} Titulo:${lib2.titulo} Numero de paginas:${lib2.numeroPaginas} Descripcion:${lib2.descripcion}",
  );
  print(
    "ISBN:${lib3.ISBN} Titulo:${lib3.titulo} Numero de paginas:${lib3.numeroPaginas} Descripcion:${lib3.descripcion}",
  );
}
