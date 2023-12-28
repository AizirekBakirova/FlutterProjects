import 'package:flutter/material.dart';
import 'package:sabak_23_weather_app_1_ui/components/near_me_location.dart';
import 'package:sabak_23_weather_app_1_ui/components/temp_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _myAppBar(),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/weather.jpg'), fit: BoxFit.cover)),
        child: const Column(
          children: [NearMeLocation(), TempWidget()],
        ),
      ),
    );
  }

  AppBar _myAppBar() {
    return AppBar(
      title: const Center(
        child: Text(
          'Weather App',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
