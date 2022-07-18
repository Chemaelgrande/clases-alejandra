import 'package:first_app_flutter/blocs/app_theme/app_theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemePage extends StatelessWidget {
  // final bool changeThemeState;
  const ThemePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // final int randInt = Random().nextInt(10);
            // print(randInt);
            context.read<ThemeBloc>().add(ChangeThemeEvent(randInt: false));
          },
          child: const Text(
            "Change Theme",
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
