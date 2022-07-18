import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:first_app_flutter/utils/var_utils.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState.initial());

  void incriment() {
    final newState = state.copyWith(counter: state.counter + 1);

    log("${newState.counter}");
    emit(newState);
  }

  void decrement() {
    final newState = state.copyWith(counter: state.counter - 1);

    log("${newState.counter}");
    emit(newState);
  }

  void nullValueIncrement() {
    final newState = state.copyWith();
    log("${newState.counter}");
    emit(newState);
  }
}
