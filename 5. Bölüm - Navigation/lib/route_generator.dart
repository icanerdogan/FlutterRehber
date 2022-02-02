import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:navigator/blue_page.dart';
import 'package:navigator/main.dart';
import 'package:navigator/ogrenci_detay.dart';
import 'package:navigator/ogrenci_listesi.dart';
import 'package:navigator/orange_page.dart';

class RouteGenerator {
  static Route<dynamic>? targetPage(Widget gidilecekWidget, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(settings: settings, builder: (context) => gidilecekWidget);
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(settings: settings, builder: (context) => gidilecekWidget);
    } else {
      return MaterialPageRoute(settings: settings, builder: (context) => gidilecekWidget);
    }
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    //settings.name: Gidilecek rota
    //settings.arguments: Eğer gidilecek rotaya veri gönderilecekse kullanılacak yapı!

    switch (settings.name) {
      case '/':
        return targetPage(AnaSayfa(), settings);
      case '/orangePage':
        return targetPage(OrangePage(), settings);
      case '/bluePage':
        return targetPage(BluePage(), settings);
      case '/ogrenciListesi':
        //print(settings.name);
        // main.dart içinden yolladığımız veriyi burada yakalıyoruz!
        //print(settings.arguments); // Navigator.of(context).pushNamed('/ogrenciListesi',arguments: 60);
        return targetPage(OgrenciListesi(), settings);
      case '/ogrenciDetay':
        // Ogrenci tipinde aldık
         var parametredekiOgrenci = settings.arguments as Ogrenci;
         // BU DURUMLARDA settings İHTİYAÇ DUYULMAZ ÇÜNKÜ KURUCU BİR METODA İHTİYAÇ DUYDUĞU METOD GÖNDERİLDİ
        return targetPage(OgrenciDetay(secilenOgranci: parametredekiOgrenci), settings);
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    title: Text('Error'),
                  ),
                  body: Center(
                    child: Text('404'),
                  ),
                ));
    }
  }
}
