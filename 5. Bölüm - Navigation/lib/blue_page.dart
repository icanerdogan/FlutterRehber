import 'package:flutter/material.dart';

class BluePage extends StatelessWidget {
  const BluePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BluePage'), backgroundColor: Colors.blue,),
      body: Container(
        child: Text("BluePage", style: TextStyle(fontSize: 24),),
      ),
    );
  }
}
