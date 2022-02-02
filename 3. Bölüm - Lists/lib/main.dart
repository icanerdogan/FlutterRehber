import 'package:flutter/material.dart';
import 'package:lists/card_listtile.dart';
import 'package:lists/listview_kullanimi.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:lists/listview_layout_problemleri.dart';

void main() {
  runApp(MyApp());
  configLoading();
}

// TÜM ELEMANLARDA BU KULLANILIR!
void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.white
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = true;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ListviewLayoutProblemleri(),
      //ListViewKullanimi(),
      //CardveListileKullanimi(),
      builder: EasyLoading.init(),
    );
  }
}
