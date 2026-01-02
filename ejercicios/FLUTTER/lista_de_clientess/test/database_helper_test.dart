// ignore_for_file: avoid_print

import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:lista_de_clientess/database_helper.dart';
import 'package:lista_de_clientess/product.dart';

void main() {
  sqfliteFfiInit();

  databaseFactory = databaseFactoryFfi;

  late DatabaseHelper databaseHelper;

  setUp(() {
    databaseHelper = DatabaseHelper();
  });

  test('Insert product', () async {
    var product = Product(
      id: 1,
      name: "Test Product",
      price: 9.99,
      description: "Test Description",
      email: "a",
    );
    await databaseHelper.insertProduct((product));
    var products = await databaseHelper.getProducts();

    for (var product in products) {
      print(
        ' ID: ${product.id}, Name: ${product.name}, Price: ${product.price}, Description: ${product.description}',
      );
    }
  });

  test('Update product', () async {
    var product = Product(
      id: 1,
      name: "Updated product",
      price: 200.99,
      description: "updated description",
      email: "a",
    );
    await databaseHelper.updateProduct(product);
    var products = await databaseHelper.getProducts();

    for (var product in products) {
      print(
        ' ID: ${product.id}, Name: ${product.name}, Price: ${product.price}, Description: ${product.description}',
      );
    }
  });
  test('Delete products', () async {
    await databaseHelper.deleteProduct(1);
    var products = await databaseHelper.getProducts();

    for (var product in products) {
      print(
        ' ID: ${product.id}, Name: ${product.name}, Price: ${product.price}, Description: ${product.description}',
      );
    }
  });
}
