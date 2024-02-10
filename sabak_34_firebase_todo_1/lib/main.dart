import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sabak_34_firebase_todo_1/features/presentation/pages/home_page.dart';
import 'package:sabak_34_firebase_todo_1/features/presentation/pages/my_todo_page.dart';
import 'package:sabak_34_firebase_todo_1/firebase_options.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyTodoPage(),
    );
  }
}
