import 'package:flutter/material.dart';
import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'models/task_data.dart';


void main() {
  runApp(const MyApp());
}

 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return ChangeNotifierProvider<MyState>(
       create: (context) => MyState(),
       child: MaterialApp(
         debugShowCheckedModeBanner: false,
         home: TasksScreen(),
       ),
     );
   }
 }






