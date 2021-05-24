import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  static Route go() => MaterialPageRoute<void>(builder: (_) => HomeView());

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('This is HomePage'),
      ),
    );
  }
}
