import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Dersleri"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            rowOlustur(),
            Expanded(child: columnOlustur())
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Colors.amber,
          child: Icon(Icons.alarm, color: Colors.white,),
        ),
      ),
    );
  }

  Container containerOlustur(String harf, Color renk, {double margin=0}){
    return Container(width: 60, height: 80,margin: EdgeInsets.only(top: margin), color: renk, alignment: Alignment.center,
      child: Text(harf, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
    );
  }
  Column columnOlustur() {
    return Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: containerOlustur("E", Colors.orange.shade100, margin: 15.0),
              ),
              Expanded(
                child: containerOlustur("R", Colors.orange.shade200, margin: 15.0),
              ),
              Expanded(
                child: containerOlustur("S", Colors.orange.shade300, margin: 15.0),
              ),
              Expanded(
                child: containerOlustur("L", Colors.orange.shade400, margin: 15.0),
              ),
              Expanded(
                child: containerOlustur("E", Colors.orange.shade500, margin: 15.0),
              ),
              Expanded(
                child: containerOlustur("R", Colors.orange.shade600, margin: 15.0),
              ),
              Expanded(
                child: containerOlustur("I", Colors.orange.shade700, margin: 15.0),
              ),
            ],
          );
  }

  Row rowOlustur() {
    return Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              containerOlustur("D", Colors.orange.shade50),
              containerOlustur("A", Colors.orange.shade100),
              containerOlustur("R", Colors.orange.shade200),
              containerOlustur("T", Colors.orange.shade400),
            ],
          );
  }

}