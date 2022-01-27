import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Counter AppBar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Butona Basılma Miktarı",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Text(_sayac.toString(),
                style: Theme.of(context).textTheme.headline1)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("Butona Tıklandı ve Sayaç Deeğeri: $_sayac");
          sayaciArttir();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void sayaciArttir() {
    setState(() {
      _sayac++;
    });
  }
}
