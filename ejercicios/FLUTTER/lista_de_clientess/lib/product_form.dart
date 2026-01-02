// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:lista_de_clientess/database_helper.dart';
import 'package:lista_de_clientess/product.dart';

class ProductForm extends StatefulWidget {
  const ProductForm({super.key});

  @override
  State<StatefulWidget> createState() {
    return ProductFormState();
  }
}

class ProductFormState extends State {
  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final priceController = TextEditingController();
    final descriptionController = TextEditingController();
    final emailController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ingreso de Productos"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: "Nombre Producto"),
            ),
            TextField(
              controller: priceController,
              decoration: const InputDecoration(labelText: "Precio Producto"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(
                labelText: "Descripcion Producto",
              ),
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: "Correo Porducto?"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final product = Product(
                  id: DateTime.now().millisecondsSinceEpoch,
                  name: nameController.text,
                  price: double.parse(priceController.text),
                  description: descriptionController.text,
                  email: emailController.text,
                );
                DatabaseHelper().insertProduct(product);
                print("Prtoducto ingresado en bdd:${product.name}");
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Producto añadido!!")),
                );
                Navigator.pop(context, true); //cierra la pantallas
              },
              child: const Text("Guardar"),
            ),
          ],
        ),
      ),
    );
  }
}
