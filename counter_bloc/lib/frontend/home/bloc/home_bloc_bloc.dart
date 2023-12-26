import 'package:bloc/bloc.dart';
import 'package:counter_bloc/frontend/home/bloc/home_bloc_event.dart';
import 'package:counter_bloc/frontend/home/bloc/home_bloc_state.dart';

class homeCounterBloc extends Bloc<homeCounterEvent, homecounterState> {
  homeCounterBloc() : super(homecounterInitialState()) {
    on((event, emit) {
      emit(homecounterIncrementState(state.counter + 1));
    });
  }
}
