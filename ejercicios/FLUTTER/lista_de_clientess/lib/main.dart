import 'package:flutter/material.dart';
import 'package:lista_de_clientess/database_helper.dart';
import 'package:lista_de_clientess/product_form.dart';
import 'package:lista_de_clientess/products_list.dart';

void main() {
  var dbHelper1 = DatabaseHelper();
  var dbHelper2 = DatabaseHelper();

  if (dbHelper1 == dbHelper2) {
    // ignore: avoid_print
    print("DatabaseHelper es un singleton");
  } else {
    // ignore: avoid_print
    print("DaatabaseHelper no es un singleton");
  }

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ProductsList(),
      routes: {'/add': (context) => const ProductForm()},
    );
  }
}
