// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import '../models/book.dart';
import '../services/database_helper.dart';

class AddBookPage extends StatefulWidget {
  const AddBookPage({super.key});

  @override
  State<AddBookPage> createState() => _AddBookPageState();
}

class _AddBookPageState extends State<AddBookPage> {
  final titleController = TextEditingController();
  final authorController = TextEditingController();
  final noteController = TextEditingController();
  String status = 'Pendiente';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Agregar Libro"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: "Título"),
            ),
            TextField(
              controller: authorController,
              decoration: const InputDecoration(labelText: "Autor"),
            ),
            const SizedBox(height: 20),
            DropdownButton<String>(
              value: status,
              items: [
                'Leido',
                'Pendiente',
              ].map((s) => DropdownMenuItem(value: s, child: Text(s))).toList(),
              onChanged: (val) => setState(() {
                status = val!;
              }),
            ),
            TextField(
              controller: noteController,
              decoration: const InputDecoration(labelText: "Nota"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final book = Book(
                  id: "",
                  title: titleController.text,
                  author: authorController.text,
                  status: status,
                  note: noteController.text,
                );
                await DatabaseHelper().insertBook(book);
                Navigator.pop(context, true);
              },
              child: const Text("Guardar"),
            ),
          ],
        ),
      ),
    );
  }
}
