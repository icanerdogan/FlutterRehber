import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:toast/toast.dart';

class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({Key? key}) : super(key: key);

  List<Ogrenci> tumOgrenciler = List.generate(
      500,
      (index) => Ogrenci(index + 1, 'Ogrenci adi ${index + 1}',
          'Öğrenci Soyadı ${index + 1}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Öğrenci Listesi"),
        ),
        // LISTVIEW: Listenin diğer elemanlarını görüntülerken görüntülenmeyen elemanları da bellekte tutar ve performans düşer!
        body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            var oankiOgrenci = tumOgrenciler[index];

            return Card(
              color:
                  index % 2 == 0 ? Colors.orange.shade50 : Colors.red.shade50,
              child: ListTile(
                title: Text(tumOgrenciler[index].isim),
                subtitle: Text(tumOgrenciler[index].soyisim),
                leading: CircleAvatar(
                  child: Text(tumOgrenciler[index].id.toString()),
                ),
                onLongPress: () {
                  _alertDialogIslemleri(context, oankiOgrenci);
                },
                onTap: () {
                  //Toast.show("Elemana Tıklandı: ${index}", context);
                  if (index % 2 == 0) {
                    EasyLoading.instance.backgroundColor = Colors.red;
                  } else {
                    EasyLoading.instance.backgroundColor = Colors.teal;
                  }
                  EasyLoading.showToast("Elemana Tıklandı: ${index}",
                      duration: Duration(seconds: 3),
                      dismissOnTap: true,
                      toastPosition: EasyLoadingToastPosition.bottom);
                },
              ),
            );
          },
          itemCount: tumOgrenciler.length,
          separatorBuilder: (BuildContext context, int index) {
            var yeniIndex = index + 1;
            if (yeniIndex % 4 == 0) {
              return Divider(
                thickness: 2,
                color: Colors.teal,
              );
            } else {
              return SizedBox();
            }
          },
        )
        //builderListView()
        //klasikListView()
        );
  }

  ListView builderListView() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: index % 2 == 0 ? Colors.orange.shade50 : Colors.red.shade50,
          child: ListTile(
            onTap: () {
              Toast.show("Elemana Tıklandı: ${index}", context);
            },
            title: Text(tumOgrenciler[index].isim),
            subtitle: Text(tumOgrenciler[index].soyisim),
            leading: CircleAvatar(
              child: Text(tumOgrenciler[index].id.toString()),
            ),
          ),
        );
      },
      itemCount: tumOgrenciler.length,
    );
  }

  ListView klasikListView() {
    return ListView(
      children: tumOgrenciler
          .map((Ogrenci ogr) => ListTile(
                title: Text(ogr.isim),
                subtitle: Text(ogr.soyisim),
                leading: CircleAvatar(
                  child: Text(ogr.id.toString()),
                ),
              ))
          .toList(),
    );
  }

  void _alertDialogIslemleri(BuildContext context, Ogrenci secilenOgranci) {
    showDialog(
      //Buton harici ekranın dışına basıldığında kapatılmasını engeller!
      barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            // Ogrenci Class'ı içindeki toString fonksiyonu düzenlendi!
            title: Text(secilenOgranci.toString()),
            // Açıklama kısmı uzun olabileceği için SingleChildScrollView içine koyduk!
            content: SingleChildScrollView(
                child: ListBody(
              children: [
                Text("İbrahim1" * 100),
                Text("İbrahim2" * 100),
                Text("İbrahim3" * 100)
              ],
            )),
            actions: [
              //Button Bar: İçine aldığı butonaları toplu şekilde düzenlemeye çalışır!
              ButtonBar(children: [
                TextButton(onPressed: () {
                  //Basıldığında ait olduğu Context'e git!
                  Navigator.pop(context);
                }, child: Text("KAPAT")),
                TextButton(onPressed: () {}, child: Text("TAMAM")),
              ])
            ],
          );
        });
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);

  @override
  String toString() {
    // TODO: implement toString
    return 'Isim: ${isim} Soyisi: ${soyisim} id: ${id}';
  }
}
