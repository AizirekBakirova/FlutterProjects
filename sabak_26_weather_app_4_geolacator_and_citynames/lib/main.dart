import 'package:flutter/material.dart';
import 'package:sabak_26_weather_app_4_geolacator_and_citynames/features/presentation/get_started.dart';
import 'package:sabak_26_weather_app_4_geolacator_and_citynames/features/presentation/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const GetStarted(),
    );
  }
}
