part of 'counter_cubit.dart';

class CounterState {
  final int counter;

  const CounterState({required this.counter});

  factory CounterState.initial() {
    VarUtils().changeName();
    return const CounterState(counter: 1);
  }

  CounterState copyWith({int? counter}) {
    return CounterState(counter: counter ?? this.counter);
  }
}
