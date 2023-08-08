part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class ShowMoreEvent extends HomeEvent {
  final HomeState state;

  const ShowMoreEvent(this.state);
}
