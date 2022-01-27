import 'package:flutter/material.dart';

//POPUP MENU AppBar içinde actions içinde tanımlanır!
class PopupMenuKullanimi extends StatefulWidget{
  @override
  State<PopupMenuKullanimi> createState() => _PopupMenuKullanimiState();
}

class _PopupMenuKullanimiState extends State<PopupMenuKullanimi> {
  String _secilenDurum = "";
  List<String> islemler = ["Post Ekle", "Post Sil", "DM Kutusu", "Profil", "Çıkış"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String durum){
          setState(() {});
          print("Seçilen Durum: $_secilenDurum");
          _secilenDurum = durum;
        },
        //Hem icon Hem de Child aynı anda atanmıyor!
        icon: Icon(Icons.add, size: 30,color: Colors.blue),
        itemBuilder: (BuildContext context){
          return islemler.map((e) => PopupMenuItem(child: Text(e), value: e)).toList();
          /*return <PopupMenuEntry<String>>[
            PopupMenuItem(child: Text("DM"), value: "DM"),
            PopupMenuItem(child: Text("Post"), value: "Post"),
            PopupMenuItem(child: Text("Çıkış"), value: "Çıkış"),

          ];*/
        },
      ),
    );
  }
}