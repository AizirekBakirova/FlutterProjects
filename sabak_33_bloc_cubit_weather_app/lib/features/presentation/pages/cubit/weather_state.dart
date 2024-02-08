part of 'weather_cubit.dart';

sealed class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

final class WeatherInitial extends WeatherState {}

final class LoadingState extends WeatherState {}

final class SuccessState extends WeatherService {
  SuccessState({required this.weatherModel});
  final WeatherModel weatherModel;
}

final class ErrorState extends WeatherService {
  ErrorState({required this.text});
  final String text;
}
