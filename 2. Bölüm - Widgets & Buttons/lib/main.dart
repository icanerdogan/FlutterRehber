import 'package:flutter/material.dart';
import 'package:fluttertemelwidget/dropdown_button_kullanimi.dart';
import 'package:fluttertemelwidget/image_widget.dart';
import 'package:fluttertemelwidget/my_counter_page.dart';
import 'package:fluttertemelwidget/popupmenu_kullanimi.dart';
import 'package:fluttertemelwidget/temel_buton_turleri.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Counter App",
      // TÜM TEMA BU NOKTADA TANIMLANABİLİR!
      theme: ThemeData(primarySwatch: Colors.red,
      textButtonTheme: TextButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue))),
      textTheme: TextTheme(headline1: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
                           headline2: TextStyle(color: Colors.pink, fontWeight: FontWeight.normal))),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Ornekleri'),
          actions: [
            PopupMenuKullanimi()
          ],
        ),
        body: PopupMenuKullanimi(),
        //DropDownButtonKullanimi(),
        //TemelButonlar(),
        //ImageOrnekleri(),
      ),
    );
  }
}

/*class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
*/
/*
class _MyHomePageState extends State<MyHomePage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Counter AppBar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Butona Basılma Miktarı",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Text(_sayac.toString(),
                style: Theme.of(context).textTheme.headline1)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("Butona Tıklandı ve Sayaç Deeğeri: $_sayac");
          sayaciArttir();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void sayaciArttir() {
    setState(() {
      _sayac++;
    });
  }
}
*/