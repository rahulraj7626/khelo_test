part of 'curosel_bloc.dart';

sealed class CuroselEvent extends Equatable {
  const CuroselEvent();

  @override
  List<Object> get props => [];
}

class CuroselChangeEvent extends CuroselEvent {
  final int curoselPosition;

  const CuroselChangeEvent(this.curoselPosition);
}
