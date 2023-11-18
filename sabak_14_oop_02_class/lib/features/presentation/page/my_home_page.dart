import 'package:flutter/material.dart';
import 'package:sabak_14_oop_02_class/features/presentation/components/my_body.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: const MyBody(),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      title: const Center(child: Text('OOP Class Example')),
    );
  }
}
