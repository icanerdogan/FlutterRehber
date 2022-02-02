import 'package:flutter/material.dart';

class OrangePage extends StatelessWidget {
  const OrangePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('OrangePage'), backgroundColor: Colors.orange,),
      body: Container(
        child: Text("OrangePage", style: TextStyle(fontSize: 24),),
      ),
    );
  }
}
