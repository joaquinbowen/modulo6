//import 'package:ejemplo_stateful/pages/counter_page.dart';
import 'package:ejemplo_stateful/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: WelcomePage());
  }
}
