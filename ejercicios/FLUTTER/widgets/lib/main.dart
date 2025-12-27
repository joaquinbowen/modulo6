import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          // ignore: avoid_print
          onPressed: () => {print("hola")},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        drawer: const Drawer(
          child: Column(
            children: [
              SizedBox(height: 100),
              Text("Opcion 1"),
              Text("Opcion 2"),
              Text("Opcion 3"),
            ],
          ),
        ),
        body: Center(child: Text('Hello World!')),
        backgroundColor: Colors.amber,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text("ahoraaa")),
          titleTextStyle: TextStyle(fontSize: 10, color: Colors.greenAccent),
        ),
      ),
    );
  }
}
