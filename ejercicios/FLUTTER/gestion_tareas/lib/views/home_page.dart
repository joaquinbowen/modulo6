import 'package:flutter/material.dart';
import 'package:gestion_tareas/models/task.dart';
import 'package:gestion_tareas/services/database_helper.dart';
import 'package:gestion_tareas/views/edit_task_page.dart';
import 'package:gestion_tareas/widgets/task_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Task>> _taskList;

  @override
  void initState() {
    super.initState();
    _refreshList();
  }

  void _refreshList() {
    setState(() {
      _taskList = DatabaseHelper().getTasks();
    });
  }

  void _deleteTask(int id) async {
    await DatabaseHelper().deleteTask(id);
    _refreshList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gestion de tareas :v"),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Task>>(
        future: _taskList,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("No hay libros registrados"));
          } else {
            return ListView(
              children: snapshot.data!
                  .map(
                    (task) => TaskTile(
                      task: task,
                      onDelete: () => _deleteTask(task.id),
                      onEdit: () async {
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => EditTaskPage(task: task),
                          ),
                        );
                        if (result == true) {
                          _refreshList();
                        }
                      },
                    ),
                  )
                  .toList(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.pushNamed(context, "/add");
          if (result == true) {
            _refreshList();
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
