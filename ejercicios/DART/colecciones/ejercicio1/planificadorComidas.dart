void main() {
  List<String> comidasFavoritas = [
    "Polo asado",
    "Chaulafan",
    "Tripas",
    "Encebollado",
    "Bolon",
  ];
  comidasFavoritas.add("Enconcado");
  comidasFavoritas.remove("Polo asado");
  print(comidasFavoritas[2]);

  List<List<String>> menuSemanal = [
    ["Pan", "Sopa", "Ensalada"],
    ["Huevo", "Arroz", "Galleta"],
    ["Cereal", "Chaulafan", "Manzana"],
    ["Leche", "Pollo", "Pera"],
    ["Bolon", "Pescao", "Tostada"],
    ["Sanduhce", "Salchipapa", "Machica"],
    ["Tigrillo", "Hamburguesa", "Cafe"],
  ];

  print(menuSemanal[1][1]);
  menuSemanal[4][2] = "Arepa";
  print("");

  List<String> dias = [
    "Lunes",
    "Martes",
    "Miercoles",
    "Jueves",
    "Viernes",
    "Sabado",
    "Domingo",
  ];

  for (int i = 0; i < menuSemanal.length; i++) {
    print(dias[i]);
    for (int j = 0; j < 3; j++) {
      String et = "";
      if (j == 0) {
        et = "Desayuno";
      } else if (j == 1) {
        et = "Almuerzo";
      } else {
        et = "Cena";
      }
      print("${et}: ${menuSemanal[i][j]}");
    }
    print("");
  }
}
