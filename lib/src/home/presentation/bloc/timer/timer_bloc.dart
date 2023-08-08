import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'timer_event.dart';
part 'timer_state.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  TimerBloc() : super(const TimerInitial()) {
    on(eventHandler);
  }
  FutureOr<void> eventHandler(
      TimerEvent event, Emitter<TimerState> emit) async {
    if (event is TimerStartEvent) {
      emit(TimerBlocProgress(state.timerValue + 1));
    }
  }
}
