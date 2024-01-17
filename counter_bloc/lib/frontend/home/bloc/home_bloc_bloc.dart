import 'package:bloc/bloc.dart';
import 'package:counter_bloc/frontend/home/bloc/home_bloc_event.dart';
import 'package:counter_bloc/frontend/home/bloc/home_bloc_state.dart';

// bloc
class homeCounterBloc extends Bloc<homeCounterEvent, homecounterState> {
  homeCounterBloc() : super(homecounterInitialState(val: 0)) {
    on<homeIncrementEvent>((event, emit) {
      emit(homecounterIncrementState(state.counter + 1));
    });
    on<homedecrementEvent>((event, emit) {
      emit(homecounterIncrementState(state.counter - 1));
    });
  }
}
