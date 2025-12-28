import 'package:flutter/material.dart';
import 'package:lista_clientes/pages/cliente.dart';

class ClientesListPage extends StatelessWidget {
  ClientesListPage({super.key});
  final List<Cliente> clientes = [
    Cliente(
      nombre: "Pancho",
      apellido: "Almeida",
      cedula: "1758963475",
      telefono: "09999999966",
    ),
    Cliente(
      nombre: "Adal",
      apellido: "Pillajo",
      cedula: "1758789456",
      telefono: "0999555966",
    ),
    Cliente(
      nombre: "Pepe",
      apellido: "Cadena",
      cedula: "17582223675",
      telefono: "09788999966",
    ),
    Cliente(
      nombre: "Sebatian",
      apellido: "Boza",
      cedula: "1775263475",
      telefono: "0991259966",
    ),
    Cliente(
      nombre: "Isaac",
      apellido: "Barona",
      cedula: "1758789159",
      telefono: "0991111966",
    ),
    Cliente(
      nombre: "Raul",
      apellido: "Aligalo",
      cedula: "1758963475",
      telefono: "09999999966",
    ),
    Cliente(
      nombre: "Pablo",
      apellido: "Lopez",
      cedula: "1758963475",
      telefono: "09999999966",
    ),
    Cliente(
      nombre: "Lucas",
      apellido: "Navas",
      cedula: "1758963475",
      telefono: "09999999966",
    ),
    Cliente(
      nombre: "Jesus",
      apellido: "Haro",
      cedula: "1758963475",
      telefono: "09999999966",
    ),
    Cliente(
      nombre: "Pietro",
      apellido: "yoya",
      cedula: "1758963475",
      telefono: "09999999966",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista clientes"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
        itemCount: clientes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              "${clientes[index].nombre} ${clientes[index].apellido}",
            ),
            subtitle: Text(clientes[index].telefono),
            trailing: Text(clientes[index].cedula),
          );
        },
      ),
    );
  }
}
