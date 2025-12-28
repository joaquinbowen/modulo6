import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return CounterPageState();
  }
}

class CounterPageState extends State {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("invoca a build");
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        // ignore: avoid_print
        onPressed: () => {counter++, print("$counter"), setState(() => {})},
        child: Icon(Icons.add),
      ),
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Center(
        child: Text("$counter", style: const TextStyle(fontSize: 30)),
      ),
    );
  }
}
