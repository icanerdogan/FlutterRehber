import 'package:flutter/material.dart';

class OgrenciListesi extends StatelessWidget {
  const OgrenciListesi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // route_generator içinden gelen bilgiye yönelme!
    int elemanSayisi = ModalRoute.of(context)!.settings.arguments as int;
    print("Eleman Sayısı Alındı: $elemanSayisi");
    
    List<Ogrenci> tumOgranciler = List.generate(elemanSayisi, (index) =>Ogrenci(index + 1, "isim ${index + 1}", "soyisim ${index + 1}"));
    return Scaffold(
      appBar: AppBar(title: Text('Öğrenci Listesi'),),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                var secilen = tumOgranciler[index];
                Navigator.pushNamed(context, '/ogrenciDetay', arguments: secilen);
              },
              leading: CircleAvatar(child: Text(tumOgranciler[index].id.toString()),),
              title: Text(tumOgranciler[index].isim),
              subtitle: Text(tumOgranciler[index].soyisim),
            );
            // Liste sonsoz olduğu için bittiğinde hata vermemesi için elemanSayisi kadar item veriyoruz!
          },itemCount: elemanSayisi,
      ),
    );
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
}