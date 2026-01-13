import 'package:flutter/material.dart';
import 'package:gestion_tareas/views/add_task_page.dart';
import 'package:gestion_tareas/views/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gestion Tareas demo",
      home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      routes: {"/add": (context) => const AddTaskPage()},
    );
  }
}
