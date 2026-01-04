import 'pelicula.dart';

void main() {
  Map<String, List<Pelicula>> catalogoStreaming = {
    "Netflix": [Pelicula("Baby driver", 2015), Pelicula("Amores perros", 2000)],
    "HBO": [Pelicula("Scott Pilgrim", 2002), Pelicula("Dune", 2021)],
    "Disney+": [Pelicula("Rogue one", 2018), Pelicula("Avatar", 2012)],
  };

  for (var pelicula in catalogoStreaming["Netflix"]!) {
    print(pelicula.titulo);
  }

  catalogoStreaming["Disney+"]!.add(Pelicula("Ratatoille", 2014));

  catalogoStreaming["HBO"]![0].anioEstreno = 2001;

  catalogoStreaming["Netflix"]!.removeAt(1);

  for (var plat in catalogoStreaming.keys) {
    print("Plataforma: ${plat}");
    for (var pelicula in catalogoStreaming[plat]!) {
      print("- ${pelicula.titulo} (${pelicula.anioEstreno})");
    }
  }
}
