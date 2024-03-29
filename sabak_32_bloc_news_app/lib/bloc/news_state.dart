part of 'news_bloc.dart';

sealed class NewsState extends Equatable {
  const NewsState();

  @override
  List<Object> get props => [];
}

final class LoadingState extends NewsState {}

final class SuccessState extends NewsState {
  const SuccessState({required this.news});
  final TopNews? news;
}

final class ErrorState extends NewsState {
  const ErrorState({required this.text});
  final String text;
}
