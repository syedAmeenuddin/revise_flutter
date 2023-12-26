import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'info_bloc_event.dart';
part 'info_bloc_state.dart';

class InfoBlocBloc extends Bloc<InfoBlocEvent, InfoBlocState> {
  InfoBlocBloc() : super(InfoBlocInitial()) {
    on<InfoBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
