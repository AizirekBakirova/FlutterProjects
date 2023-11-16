import 'package:flutter/material.dart';
import 'package:sabak_13_oop_01_class/features/presentation/components/my_books_list.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: myAppBar(),
        body: BookListWidget());
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: Colors.grey,
      title: const Center(child: Text('OOP class')),
    );
  }
}
