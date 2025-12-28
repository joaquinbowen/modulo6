import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return WelcomePageState();
  }
}

class WelcomePageState extends State {
  String? nombre;
  String? apellido;
  String saludo = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Text("ingrese su nombre"),
            TextField(
              onChanged: (text) {
                nombre = text;
              },
            ),
            const Text("ingrese su apellido"),
            TextField(
              onChanged: (text) {
                apellido = text;
              },
            ),
            MaterialButton(
              color: Colors.redAccent,
              onPressed: () {
                saludo = "Bienvenido ${nombre!} ${apellido!}";
                setState(() {});
              },
              child: const Text("saludar"),
            ),
            Text(saludo),
          ],
        ),
      ),
    );
  }
}
