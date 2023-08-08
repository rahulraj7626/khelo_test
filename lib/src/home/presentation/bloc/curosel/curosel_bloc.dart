import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'curosel_event.dart';
part 'curosel_state.dart';

class CuroselBloc extends Bloc<CuroselEvent, CuroselState> {
  CuroselBloc() : super(CuroselInitial()) {
    on<CuroselChangeEvent>((event, emit) {
      emit(CuroselLoadingState());
      emit(CuroselChangeState(event.curoselPosition));
    });
  }
}
