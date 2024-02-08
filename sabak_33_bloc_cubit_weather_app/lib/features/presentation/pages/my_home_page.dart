import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabak_33_bloc_cubit_weather_app/features/presentation/pages/cubit/weather_cubit.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        if (state is LoadingState) {
          return Text('Loading');
        } else if (state is SuccessState) {
          return Text('${state.weatherModel.main.temp}');
        } else if (state is ErrorState) {
          return Text('state.text');
        } else {
          return Text('Undefined error, check one more time');
        }
      },
    ));
  }
}
