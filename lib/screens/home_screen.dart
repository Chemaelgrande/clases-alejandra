//Extern app
import 'package:first_app_flutter/cubits/counter/counter_cubit.dart';
import 'package:first_app_flutter/utils/var_utils.dart';
import 'package:first_app_flutter/widgets/counter_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//Intern app
import 'package:first_app_flutter/theme/spaces_app.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final SpacesApp spacesApp = SpacesApp();

  @override
  Widget build(BuildContext context) {
    return BlocListener<CounterCubit, CounterState>(
        listener: (context, stateListenerCounter) {
          if (stateListenerCounter.counter == 2) {
            showDialog(
                context: context,
                builder: (context) {
                  return const AlertDialog(
                    content: Text('Esto es un AlertDialog'),
                  );
                });
          }
        },
        child: Scaffold(
          body: const CounterWidget(),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).incriment();
                },
                child: const Icon(Icons.add),
              ),
              SizedBox(
                width: spacesApp.miniSpace,
              ),
              FloatingActionButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).decrement();
                },
                child: const Icon(
                  Icons.remove,
                ),
              ),
            ],
          ),
        ));
  }
}
