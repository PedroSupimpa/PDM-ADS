import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/model/task.dart';
import 'package:to_do/provider/task_provider.dart';
import 'package:to_do/routes.dart';
import 'package:to_do/view/add_task/add_task.dart';
import 'package:to_do/view/task_list/task_list.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TaskProvider>(create: (context) => TaskProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.home,
        routes: {
          AppRoutes.home: (context) => TaskListPage(
                
              ),
          AppRoutes.add: (context) => AddTaskPage(
                
              )
        },
      ),
    );
  }
}