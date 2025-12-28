// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:navigation/pages/product_pages.dart';

class ProductlistPages extends StatelessWidget {
  final List<Product> products = [
    Product(name: "Producto1", price: 20.3, description: "desc producto 1"),
    Product(name: "Producto2", price: 78.3, description: "desc producto 2"),
    Product(name: "Producto3", price: 200.3, description: "desc producto 3"),
    Product(name: "Producto4", price: 450.3, description: "desc producto 4"),
    Product(name: "Producto5", price: 78.3, description: "desc producto 5"),
    Product(name: "Producto1", price: 20.3, description: "desc producto 1"),
    Product(name: "Producto2", price: 78.3, description: "desc producto 2"),
    Product(name: "Producto3", price: 200.3, description: "desc producto 3"),
    Product(name: "Producto4", price: 450.3, description: "desc producto 4"),
    Product(name: "Producto5", price: 78.3, description: "desc producto 5"),
    Product(name: "Producto1", price: 20.3, description: "desc producto 1"),
    Product(name: "Producto2", price: 78.3, description: "desc producto 2"),
    Product(name: "Producto3", price: 200.3, description: "desc producto 3"),
    Product(name: "Producto4", price: 450.3, description: "desc producto 4"),
    Product(name: "Producto5", price: 78.3, description: "desc producto 5"),
  ];

  ProductlistPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text(products[index].description),
            trailing: Text("\$${products[index].price.toStringAsFixed(2)}"),
          );
        },
      ),
    );
  }
}
