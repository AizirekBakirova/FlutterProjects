import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:sabak_34_firebase_todo_1/features/presentation/pages/home_page.dart';

class MyTodoPage extends StatefulWidget {
  const MyTodoPage({super.key});

  @override
  State<MyTodoPage> createState() => _MyTodoPageState();
}

class _MyTodoPageState extends State<MyTodoPage> {
  bool isCompleted = false;
  final nameController = TextEditingController();
  final biographyController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My ToDo Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your name';
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: biographyController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your biography';
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(),
                      labelText: 'Biography'),
                  maxLines: 8,
                ),
                CheckboxListTile(
                  title: const Text('Is Completed'),
                  value: isCompleted,
                  onChanged: (value) {
                    setState(() {
                      isCompleted = value!;
                    });
                  },
                  secondary: const Icon(Icons.hourglass_empty),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const MyHomePage();
                      }));
                    } else {
                      null;
                    }
                  },
                  icon: const Icon(Icons.next_plan),
                  label: const Text('Автордук бетке отуу'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
