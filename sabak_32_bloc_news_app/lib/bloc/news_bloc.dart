import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sabak_32_bloc_news_app/features/data/models/top_news.dart';
import 'package:sabak_32_bloc_news_app/features/data/new_service.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsService service;
  NewsBloc(this.service) : super(LoadingState()) {
    on<NewsEvent>((event, emit) {
      _getData();
    });
  }
  Future<void> _getData() async {
    final news = await service.fetchData();
    if (news != null) {
      emit(SuccessState(news: news));
    } else {
      emit(const ErrorState(text: 'ERROR'));
    }
  }
}
