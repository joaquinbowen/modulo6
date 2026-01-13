// ignore_for_file: use_build_context_synchronously, avoid_print

import 'package:flutter/material.dart';
import '../models/task.dart';
import '../services/database_helper.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final dueDateController = TextEditingController();
  String status = "Pendiente";
  DateTime? selectedDate;

  bool _validateFields() {
    if (titleController.text.trim().isEmpty ||
        descriptionController.text.trim().isEmpty ||
        dueDateController.text.trim().isEmpty ||
        selectedDate == null) {
      return false;
    }
    return true;
  }

  void _showValidationAlert() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Campos incompletos"),
        content: const Text(
          "Por favor complete todos los campos antes de guardar la tarea.",
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    return "${date.year.toString().padLeft(4, '0')}-"
        "${date.month.toString().padLeft(2, '0')}-"
        "${date.day.toString().padLeft(2, '0')}";
  }

  Future<void> _pickDate() async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
    );

    if (date != null) {
      setState(() {
        selectedDate = date;
        dueDateController.text = _formatDate(date);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Agregar Tarea")),
      body: Padding(
        padding: EdgeInsetsGeometry.all(17),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: "Título"),
            ),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: "Descripcion"),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: dueDateController,
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'Fecha de vencimiento',
                suffixIcon: Icon(Icons.calendar_today),
                border: OutlineInputBorder(),
              ),
              onTap: _pickDate,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Seleccione una fecha';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            DropdownButton<String>(
              value: status,
              items: [
                'Completada',
                'Pendiente',
              ].map((s) => DropdownMenuItem(value: s, child: Text(s))).toList(),
              onChanged: (val) => setState(() {
                status = val!;
              }),
            ),
            ElevatedButton(
              onPressed: () async {
                if (!_validateFields()) {
                  _showValidationAlert();
                  return;
                }

                final task = Task(
                  id: DateTime.now().millisecondsSinceEpoch,
                  title: titleController.text,
                  description: descriptionController.text,
                  dueDate: dueDateController.text,
                  status: status,
                );
                await DatabaseHelper().insertTask(task);
                print("guarda");
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
