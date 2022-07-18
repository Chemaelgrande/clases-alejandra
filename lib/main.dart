import 'package:first_app_flutter/blocs/app_theme/app_theme_bloc.dart';
import 'package:first_app_flutter/cubits/counter/counter_cubit.dart';
import 'package:first_app_flutter/screens/home_screen.dart';
import 'package:first_app_flutter/screens/theme_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterCubit>(
          create: (context) => CounterCubit(),
        ),
        BlocProvider<ThemeBloc>(
          create: (context) => ThemeBloc(),
        ),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Material App',
            home: ThemePage(),
            theme: (state.appTheme == AppTheme.light)
                ? ThemeData.light()
                : ThemeData.dark(),
          );
        },
      ),
    );
  }
}
