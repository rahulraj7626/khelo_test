import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<ShowMoreEvent>((event, emit) {
      if (event.state is ExpandedState) {
        emit(MinimizeState());
      } else {
        emit(ExpandedState());
      }
    });
  }
}
