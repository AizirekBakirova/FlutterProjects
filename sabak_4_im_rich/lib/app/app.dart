import 'package:flutter/material.dart';
import 'package:sabak_4_im_rich/view/my_home_page.dart';

// My App klasstyn atalyshy
// extends => muras
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}
