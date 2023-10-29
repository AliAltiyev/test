part of 'home_bloc.dart';

@immutable
abstract class HomeState extends Equatable {}

class HomeInitial extends HomeState {
  @override
  List<Object?> get props => <Object>[];
}

class HomeLoading extends HomeState {
  
  @override
  List<Object?> get props => <Object>[];

}

class HomeSuccess extends HomeState {
  
  List<ArticleEntity> news;

  HomeSuccess({
    required this.news,
  });
  @override
  List<Object?> get props => <Object>[
        news,
      ];

  HomeSuccess copyWith({
    List<ArticleEntity>? news,
  }) {
    return HomeSuccess(
      news: news ?? this.news,
    );
  }
}

class HomeFailure extends HomeState {
  @override
  List<Object?> get props => <Object>[];
}
