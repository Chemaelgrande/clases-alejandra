import 'package:first_app_flutter/theme/spaces_app.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final SpacesApp spacesApp = SpacesApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Counter'),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          SizedBox(
            width: spacesApp.miniSpace,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              Icons.remove,
            ),
          ),
        ],
      ),
    );
  }
}
