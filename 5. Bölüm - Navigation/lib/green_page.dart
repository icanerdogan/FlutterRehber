import 'package:flutter/material.dart';

class GreenPage extends StatelessWidget {
  const GreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GreenPage'), backgroundColor: Colors.green,),
      body: Container(
        child: Text("GreenPage", style: TextStyle(fontSize: 24),),
      ),
    );
  }
}
