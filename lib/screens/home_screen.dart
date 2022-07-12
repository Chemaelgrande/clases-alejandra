import 'package:first_app_flutter/utils/var_utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final VarUtils varUtils = VarUtils();

  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        varUtils.isOpen = !varUtils.isOpen;
        // varUtils.text1 = varUtils.text2;
        // log(varUtils.text1);
        // setState(() {});
      }),
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: Text(varUtils.isOpen.toString()),
      ),
    );
  }
}
