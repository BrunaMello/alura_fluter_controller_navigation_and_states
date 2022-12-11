import 'package:alura_fluter_controller_navigation_and_states/data/task_inherited.dart';
import 'package:alura_fluter_controller_navigation_and_states/screens/form_screen.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Container(), title: const Text("Tasks")),
      body: ListView(
        children: TaskInherited.of(context).taskList,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
              builder: (contextNew) => FormScreen(
                taskContext: context,)));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
