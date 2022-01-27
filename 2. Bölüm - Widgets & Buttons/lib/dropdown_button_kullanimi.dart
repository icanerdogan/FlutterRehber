import 'package:flutter/material.dart';

// DROPDOWN Kullanımında Stateful Widget ile Hazırlanır Çünkü Değişim vardır!
class DropDownButtonKullanimi extends StatefulWidget {
  @override
  State<DropDownButtonKullanimi> createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  String? _secilenSehir = null;
  List<String> _tumSehirler = [
    "İstanbul",
    "Ankara",
    "Bursa",
    "İzmir",
    "Antalya",
    "Diyarbakır",
    "Gaziantep",
    "Şanlıurfa",
    "Trabzon",
    "Adana",
    "Konya",
    "Manisa",
    "Muğla",
    "Siirt",
    "Ağrı",
    "Van",
    "Erzurum",
    "Sivas",
    "Elazığ",
    "Malatya",
    "Rize"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton(
        value: _secilenSehir,
        // Hint değerin olması için mutlaka value mutlaka null olması gereklidir!
        hint: Text("Şehir Seçiniz!"),

        items: _tumSehirler.map((String e) =>
            DropdownMenuItem(child: Text(e), value: e)).toList(),

        /*items: [
          DropdownMenuItem(child: Text("Ankara"), value: "Ankara"),
          DropdownMenuItem(child: Text("İstanbul"), value: "İstanbul"),
          DropdownMenuItem(child: Text("İzmir"), value: "İzmir"),
        ],*/
        //Değişiklikleri Bize Bildiren Kısım!
        onChanged: (String? value) {
          setState(() {});
          _secilenSehir = value;
        },
      ),
    );
  }
}
