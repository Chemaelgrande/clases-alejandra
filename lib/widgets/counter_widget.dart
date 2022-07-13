import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:first_app_flutter/cubits/counter/counter_cubit.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
        builder: (context, stateCounter) {
      return Center(
        child: Text(stateCounter.counter.toString()),
      );
    });
  }
}
