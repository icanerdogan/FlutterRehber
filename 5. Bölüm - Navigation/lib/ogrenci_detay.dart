import 'package:flutter/material.dart';
import 'package:navigator/ogrenci_listesi.dart';

class OgrenciDetay extends StatelessWidget {
  final Ogrenci secilenOgranci;
  const OgrenciDetay({required this.secilenOgranci, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var secilen = ModalRoute.of(context)!.settings.arguments as Ogrenci;
    print('Secilen Ogranci ::::: ${secilen.isim}');
    return Scaffold(
      appBar: AppBar(title: Text("Öğrenci Detay"),),
      body: Center(
        child: Column(
          children: [
            Text(secilenOgranci.id.toString()),
            Text(secilenOgranci.isim),
            Text(secilenOgranci.soyisim),
          ],
        ),
      ),
    );
  }
}
