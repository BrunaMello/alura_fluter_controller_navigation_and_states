import 'package:alura_fluter_controller_navigation_and_states/components/task.dart';
import 'package:flutter/material.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> taskList = [
    Task('Learning Flutter', 'assets/images/flutter.png', 3),
    Task('Ride Bike', 'assets/images/bike.webp', 1),
    Task('Learning English', 'assets/images/book.jpeg', 2),
    Task('Meditation', 'assets/images/meditation.jpeg', 5),
  ];

  void newTask(String name, String photo, int difficultyLevel){
    taskList.add(Task(name, photo, difficultyLevel));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
