// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import '../models/task.dart';
import '../services/database_helper.dart';

class EditTaskPage extends StatefulWidget {
  final Task task;
  const EditTaskPage({super.key, required this.task});

  @override
  State<EditTaskPage> createState() => _EditTaskPageState();
}

class _EditTaskPageState extends State<EditTaskPage> {
  late TextEditingController titleController;
  late TextEditingController descriptionController;
  late TextEditingController dueDateController;
  late String status;
  late DateTime selectedDate;

  bool _validateFields() {
    if (titleController.text.trim().isEmpty ||
        descriptionController.text.trim().isEmpty ||
        dueDateController.text.trim().isEmpty) {
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
      initialDate: selectedDate,
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

  DateTime parseDate(String date) {
    final parts = date.split('-');
    return DateTime(
      int.parse(parts[0]), // año
      int.parse(parts[1]), // mes
      int.parse(parts[2]), // día
    );
  }

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.task.title);
    descriptionController = TextEditingController(
      text: widget.task.description,
    );
    dueDateController = TextEditingController(text: widget.task.dueDate);
    status = widget.task.status;
    selectedDate = parseDate(widget.task.dueDate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Editar Tarea")),
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
                  id: widget.task.id,
                  title: titleController.text,
                  description: descriptionController.text,
                  dueDate: dueDateController.text,
                  status: status,
                );
                await DatabaseHelper().updateTask(task);
                Navigator.pop(context, true);
              },
              child: const Text("Actualizar"),
            ),
          ],
        ),
      ),
    );
  }
}
