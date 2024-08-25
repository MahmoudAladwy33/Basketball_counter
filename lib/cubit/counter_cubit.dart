import 'package:basketball_counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int teamApoints = 0;
  int teamBpoints = 0;

  void TeamIncrement({required String team, required int ButtonNumber}) {
    if (team == 'A' || team == 'a') {
      teamApoints += ButtonNumber;
      emit(CounterAIncrementState());
    } else {
      teamBpoints += ButtonNumber;
      emit(CounterBIncrementState());
    }
  }

  void resetPoints() {
    teamApoints = 0;
    teamBpoints = 0;
    emit(CounterResetState());
  }
}
