import 'package:flutter/material.dart';
import 'package:todos/home/home.dart';

class TodosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todos App',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: HomeView(),
    );
  }
}
