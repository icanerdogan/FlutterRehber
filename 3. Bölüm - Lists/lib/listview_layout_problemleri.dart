import 'package:flutter/material.dart';

class ListviewLayoutProblemleri extends StatelessWidget {
  const ListviewLayoutProblemleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview Layout Problems"),
      ),
      body: Container(
        height: 200,
        child: Row(
          children: [
            Text("Başladı"),
            Expanded(
              child: ListView(
                // Bu özellik listView'ın sadece içindeki çocukları kadar yer kaplamasını sağlar!
                shrinkWrap: true,
                reverse: true,
                // DİZİLİM YATAY OLDUĞUNDA ÖLÇÜLER GENİŞLİK OLARAK VERİLİYOR!
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 200,
                    color: Colors.orange.shade50,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade100,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade200,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade300,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade400,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade500,
                  ),
                ],
              ),
            ),
            Text("Bitti"),
          ],
        ),
        //columnIcindekiListe(),
        decoration: BoxDecoration(
          border: Border.all(width: 4, color: Colors.red),
        ),
      ),
    );
  }

  Column columnIcindekiListe() {
    return Column(
      children: [
        Text("Başladı"),
        // LISTVIEW COLUMN İÇİNE ALINDIĞINDA MUTLAKA EXPANDED EKLENMELİ BU ŞEKİLDE LISTVIEW BOYUTUNU COLUMN'A BİLDİRİR!
        Expanded(
          child: ListView(
            // Bu özellik listView'ın sadece içindeki çocukları kadar yer kaplamasını sağlar!
            shrinkWrap: true,
            children: [
              Container(
                height: 200,
                color: Colors.orange.shade50,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade100,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade200,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade300,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade400,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade500,
              ),
            ],
          ),
        ),
        Text("Bitti"),
      ],
    );
  }
}
