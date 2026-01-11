void main() {
  instalarAndroidStudio();
}

Future<String> descargarAS() {
  return Future.delayed(
    Duration(seconds: 10),
    () => "Android estudio se ha descargado",
  );
}

Future<String> ejecutarInstalador() {
  return Future.delayed(
    Duration(seconds: 25),
    () => "Android estudio se ha instalado",
  );
}

void instalarAndroidStudio()async {
  print("Entro a la pagina de android estudio");
  print("descargo el instalador");
  print("...");
  final mensa = await descargarAS();
  print(mensa);
  print("ejecutar instalador");
  print("...");
  final mensa2= await ejecutarInstalador();
  print(mensa2);

}
