import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabak_33_bloc_cubit_weather_app/features/data/weather_service.dart';
import 'package:sabak_33_bloc_cubit_weather_app/features/presentation/pages/cubit/weather_cubit.dart';
import 'package:sabak_33_bloc_cubit_weather_app/features/presentation/pages/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => WeatherCubit(service: weatherService)..getData(),
        child: const MyHomePage(),
      ),
    );
  }
}
