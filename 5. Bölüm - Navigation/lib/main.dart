import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigator/green_page.dart';
import 'package:navigator/orange_page.dart';
import 'package:navigator/red_page.dart';
import 'package:navigator/route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //': (context) => AnaSayfa(), KULLANIMINDAN DOLAYI home kısmını iptal ettik!
      //home: AnaSayfa(),
      // Uygulama içindeki tüm rotaları verilebilir!

      /*routes: {
        '/redPage': (context) => RedPage(),
        '/': (context) => AnaSayfa(),
        '/orangePage': (context) => OrangePage(),
      },
      // pushNamed içinde istenen rota bulunamadığında bu gösteriliri!
      onUnknownRoute: (settings) => MaterialPageRoute(builder: (context) => Scaffold(
        appBar: AppBar(title: Text('Error'),),
        body: Center(child: Text('404'),),
      )
      ),*/

      // YUKARIDAKİ routes VE onUnknownRoute BU SINIF KULLANILARAK YAPILABİLİR!
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}

//NAVIGATOR ÇALIŞMASI İÇİN BU SAYFAYA DA İSİMLENDİRME YAPMALIYIZ!

class AnaSayfa extends StatelessWidget {
  AnaSayfa({Key? key}) : super(key: key);
  int? _gelenSayi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigasyon Sınıfları")),
      body: Center(
        child: Column(
          children: [
            // ANDROID VE IOS ÖZELİNDE GEÇİŞLER İÇİN AYRI ŞEKİLDE YAPABİLİRİZ!
            ElevatedButton(
                // PUSH DEDİĞİMİZDE BİZE GELEN SAYI VARSA AL YOK
                onPressed: () async {
                  _gelenSayi = await Navigator.push<int>(context,
                      CupertinoPageRoute(builder: (redContext) => RedPage()));
                  print('Ana sayfadan gelen sayı $_gelenSayi');
                },
                style: ElevatedButton.styleFrom(primary: Colors.red),
                child: Text("Kırmızı Sayfaya Git IOS")),
            ElevatedButton(
                onPressed: () {
                  // İki Kullanım da aynı işlevde!
                  //Navigator.push(context, route);
                  //Navigator.of(context).push(route);

                  Navigator.of(context)
                      .push(
                          MaterialPageRoute(builder: (redContext) => RedPage()))
                      .then((value) => debugPrint('Gelen Sayı: $value'));
                },
                style: ElevatedButton.styleFrom(primary: Colors.red),
                child: Text("Kırmızı Sayfaya Git Android")),
            ElevatedButton(
                onPressed: () {
                  //maybePop: bulunduğu elemandan çıkar öncesinde eleman yok işlev göstermez!
                  Navigator.of(context).maybePop();
                },
                style: ElevatedButton.styleFrom(primary: Colors.red),
                child: Text("Maybe Pop Kullanımı")),
            ElevatedButton(
                onPressed: () {
                  //canPop: Öncesinde eleman olup olmadığın sorgusunu yapar
                  if (Navigator.canPop(context)) {
                    print('evet pop olabilir!');
                  } else {
                    print('hayır olamaz!');
                  }
                },
                style: ElevatedButton.styleFrom(primary: Colors.red),
                child: Text("Can Pop Kullanımı")),
            ElevatedButton(
                onPressed: () {
                  //pushReplacement: Önceki sayfanın yerine girer ard arda sayfa yığılması yapmaz!
                  // Login sayfasından Ana sayfaya gitmek için kullanılabilir!
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => GreenPage()),
                  );
                },
                style: ElevatedButton.styleFrom(primary: Colors.red),
                child: Text("Push Replacement Kullanımı")),
            ElevatedButton(
                onPressed: () {
                  // Yukarıda verdiğimiz routes içini baz alarak işlem yapar!
                  // Ancak IOS ve ANDROID için ayrı ayrı yapılamamaktadır!
                  Navigator.of(context).pushNamed('/orangePage');
                },
                style: ElevatedButton.styleFrom(primary: Colors.red),
                child: Text("PushNamed Kullanımı")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed('/ogrenciListesi', arguments: 100);
                },
                style: ElevatedButton.styleFrom(primary: Colors.orange),
                child: Text("Liste Oluştur!")),
          ],
        ),
      ),
    );
  }
}
