import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabak_33_bloc_cubit_weather_app/features/data/weather_model.dart';
import 'package:sabak_33_bloc_cubit_weather_app/features/data/weather_service.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit({required this.service}) : super(WeatherInitial());
  final WeatherService service;
  Future<void> getData() async {
    final data = await service.getWeatherData();
    emit(LoadingState());
    if (data != null) {
      emit(SuccessState(weatherModel: data));
    } else {
      emit(ErrorState(text: 'ERROR DATA'));
    }
  }
}
