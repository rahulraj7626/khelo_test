part of 'timer_bloc.dart';

abstract class TimerState extends Equatable {
  final int timerValue;
  const TimerState(this.timerValue);

  @override
  List<Object> get props => [];
}

class TimerInitial extends TimerState {
  const TimerInitial() : super(2076547);
  @override
  List<Object> get props => [];
}

class TimerBlocProgress extends TimerState {
  final int val;
  const TimerBlocProgress(this.val) : super(val);
  @override
  List<Object> get props => [val];
}
