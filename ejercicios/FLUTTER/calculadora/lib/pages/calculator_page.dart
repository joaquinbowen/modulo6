import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});
  @override
  State<StatefulWidget> createState() {
    return CalculatorPageState();
  }
}

class CalculatorPageState extends State {
  int valor1 = 0;
  int valor2 = 0;
  int resultado = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Center(child: Text("Calculadora")),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("ingrese valor 1"),
            TextField(
              keyboardType: TextInputType.numberWithOptions(),
              textAlign: TextAlign.right,
              controller: TextEditingController(text: "0"),
              onChanged: (v1) {
                if (v1 != "") {
                  valor1 = int.parse(v1);
                }
              },
            ),
            const Text("ingrese valor 2"),
            TextField(
              keyboardType: TextInputType.numberWithOptions(),
              textAlign: TextAlign.right,
              controller: TextEditingController(text: "0"),
              onChanged: (v2) {
                if (v2 != "") {
                  valor2 = int.parse(v2);
                }
              },
            ),
            MaterialButton(
              onPressed: () {
                resultado = valor1 + valor2;
                setState(() {});
              },
              color: Colors.blueGrey,
              child: Text("Sumar"),
            ),
            Text("Resultado:$resultado"),
          ],
        ),
      ),
    );
  }
}
