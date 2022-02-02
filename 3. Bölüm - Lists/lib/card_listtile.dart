import 'package:flutter/material.dart';

class CardveListileKullanimi extends StatefulWidget {
  const CardveListileKullanimi({Key? key}) : super(key: key);

  @override
  _CardveListileKullanimiState createState() => _CardveListileKullanimiState();
}

class _CardveListileKullanimiState extends State<CardveListileKullanimi> {
  String _imgUrl = "https://pngimg.com/uploads/watches/watches_PNG9868.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card ve Listtile'),
      ),
      body: Center(
        // SingleChildScrollView'dan farkı ListView birden fazla widget alabilir!
        child: ListView(
          // Ekranı tersine çevririr!
          reverse: true,
          children: [
            Column(children: [
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
            ]),
            Text("Tüm Ürünler Sergilendi!", style: TextStyle(fontSize:18)),
            ElevatedButton(onPressed: () {}, child: Text("Ürünleri Gönder!", style: TextStyle(fontSize: 24),))
          ],
        ),
      ),
    );
  }

  SingleChildScrollView singleChildKullanimi() {
    return SingleChildScrollView(
      child: Column(
        children: [
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          // İki eleman arasını ince bir çizgi ile bölen widget!
          Divider(
            color: Colors.yellow,
            thickness: 5,
            //Yukarıdan olan boşluk
            height: 10,
            // Soldan olan boşluk
            indent: 20,
            // Sağdan boşluk
            endIndent: 20,
          ),
        ],
      ),
    );
  }

  Card tekListeElemani() {
    return Card(
      color: Colors.blue.shade50,
      shadowColor: Colors.purple,
      elevation: 12,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        leading: CircleAvatar(
          child: Image.network(_imgUrl),
          backgroundColor: Colors.white,
        ),
        title: Text("Apple Watch Seri 7"),
        subtitle: Text("Siyah Alüminyum Kasa ve Siyah Spor Kordon"),
        trailing: Icon(Icons.add),
      ),
    );
  }
}
