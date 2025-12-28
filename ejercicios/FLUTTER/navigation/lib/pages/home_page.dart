import 'package:flutter/material.dart';
//import 'package:navigation/pages/customers_page.dart';
import 'package:navigation/pages/routes.dart';
//import 'package:navigation/pages/products_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Page"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.products);
              //Navigator.push(context, route);
            },
            color: Colors.greenAccent,
            child: Text("Ir a productos"),
          ),
          MaterialButton(
            onPressed: () {
              /*final route = MaterialPageRoute(
                builder: (ctx) {
                  return CustomersPage();
                },
              );
              Navigator.push(context, route);*/
              Navigator.pushNamed(context, Routes.customers);
            },
            color: Colors.greenAccent,
            child: Text("Ir a clientes"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.listview);
              //Navigator.push(context, route);
            },
            color: Colors.greenAccent,
            child: Text("Ir a listview"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.productsList);
              //Navigator.push(context, route);
            },
            color: Colors.greenAccent,
            child: Text("Ir a lista productos"),
          ),
        ],
      ),
    );
  }
}
