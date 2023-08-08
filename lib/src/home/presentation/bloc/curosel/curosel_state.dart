part of 'curosel_bloc.dart';

sealed class CuroselState extends Equatable {
  final int counter;
  const CuroselState({this.counter = 0});

  @override
  List<Object> get props => [];
}

final class CuroselInitial extends CuroselState {}

final class CuroselChangeState extends CuroselState {
  final int curoselPosition;

  const CuroselChangeState(this.curoselPosition)
      : super(counter: curoselPosition);
}

class CuroselLoadingState extends CuroselState {}
