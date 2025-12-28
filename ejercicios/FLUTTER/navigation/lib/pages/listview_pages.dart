import 'package:flutter/material.dart';

class ListviewPages extends StatelessWidget {
  const ListviewPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("ListView Basico"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        children: const <Widget>[
          ListTile(
            title: Text("Elemento 1"),
            subtitle: Text("Subtitle elemento 1"),
            leading: Icon(Icons.abc, color: Colors.blueGrey),
          ),
          ListTile(
            title: Text("Elemento 2"),
            subtitle: Text("Subtitle elemento 2"),
            leading: Icon(Icons.add_call, color: Colors.blueGrey),
          ),
          ListTile(
            title: Text("Elemento 3"),
            subtitle: Text("Subtitle elemento 3"),
            leading: Icon(Icons.query_stats, color: Colors.blueGrey),
          ),
        ],
      ),
    );
  }
}
