import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:home/home.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final FetchFeaturedNewsUseCase _fetchFeaturedNewsUseCase;

  HomeBloc({required FetchFeaturedNewsUseCase fetchFeaturedNewsUseCase})
      : _fetchFeaturedNewsUseCase = fetchFeaturedNewsUseCase,
        super(HomeInitial()) {
    on<HomeEvent>(_onFetchFeaturedNewsEvent);
    add(FetchFeaturedNewsEvent());
  }

  Future<void> _onFetchFeaturedNewsEvent(
    HomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    try {
      emit(HomeLoading());

      final List<ArticleEntity> news = await _fetchFeaturedNewsUseCase();
      emit(HomeSuccess(news: news));
    } catch (e) {
      HomeFailure();
    }
  }
}
