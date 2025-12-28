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
        drawer: const Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 35),
                  Icon(Icons.add_alarm, color: Colors.deepPurple),
                  SizedBox(width: 15),
                  Text("Alarma", style: TextStyle(color: Colors.deepPurple)),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 35),
                  Icon(Icons.home, color: Colors.red),
                  SizedBox(width: 15),
                  Text("Casa", style: TextStyle(color: Colors.red)),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 35),
                  Icon(Icons.flag, color: Colors.lightBlueAccent),
                  SizedBox(width: 15),
                  Text(
                    "Bandera",
                    style: TextStyle(color: Colors.lightBlueAccent),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 35),
                  Icon(Icons.search, color: Colors.pink),
                  SizedBox(width: 15),
                  Text("Buscar", style: TextStyle(color: Colors.pink)),
                ],
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(
            "APP TEST",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey,
          shadowColor: Colors.blue,
          elevation: 15,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined),
              label: "List",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined),
              label: "Exit",
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          // ignore: avoid_print
          onPressed: () => {print("test")},
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Center(child: Text('Hello World!')),
      ),
    );
  }
}
