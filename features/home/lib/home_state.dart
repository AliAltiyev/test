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
  @override
  List<Object?> get props => <Object>[];
}

class HomeFailure extends HomeState {
  @override
  List<Object?> get props => <Object>[];
}
