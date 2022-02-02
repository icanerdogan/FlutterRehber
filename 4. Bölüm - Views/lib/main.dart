import 'package:flutter/material.dart';
import 'package:view_turleri/grid_view_kullanimi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Views"),),
      body: GridViewOrnek(),
      ),
    );
  }
}
