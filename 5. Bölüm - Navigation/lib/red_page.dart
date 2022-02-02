import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({Key? key}) : super(key: key);
  int _rastgeleSayi = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // Telefonun geri butonu ile çıktığında kullanılır!
      onWillPop: () {
        print("on will pop çalıştı!");
        _rastgeleSayi = Random().nextInt(100);
        Navigator.pop(context, _rastgeleSayi);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('RedPage'),
          backgroundColor: Colors.red,
          // AppBar içindeki geri butonunu çevirir!
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "RedPage",
                style: TextStyle(fontSize: 24),
              ),
              ElevatedButton(
                  onPressed: () {
                    _rastgeleSayi = Random().nextInt(100);
                    print("Üretilen Sayı: $_rastgeleSayi");
                    Navigator.of(context).pop();
                  },
                  child: Text("Geri Dön!")
              ),
              ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)),
                  onPressed: () {
                    //Navigator.of(context).pushNamed('/orangePage');
                    Navigator.pushNamed(context, '/orangePage');
                  },
                  child: Text("Go To Orange", style: TextStyle(color: Colors.white, fontSize: 24),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
