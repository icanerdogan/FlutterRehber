import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _img =
        "https://media-exp1.licdn.com/dms/image/C5603AQHEW7pmdHp-Cw/profile-displayphoto-shrink_400_400/0/1629926755023?e=1648684800&v=beta&t=luvW1IN3MB75EnNYzgrKumAPQyYtkmO7dc0gMguKqYE";

    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(primary: Colors.teal, secondary: Colors.pink),
      ),
      home: Scaffold(
        //Material App içinde alan tanıyan temel widget'tır!
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Container(
          color: Colors.cyanAccent,
          height: 200,
          child: Row(
            // X ekseninin boyutu!
            mainAxisSize: MainAxisSize.max,
            // SpaceBetween: İlk ve baş elemanı sona koyar!
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            //Y eksenindeki boyutu!
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(child: Container(color: Colors.red,width: 200)),
              Flexible(child: Container(color: Colors.blue,width: 200)),
              Flexible(child: Container(color: Colors.yellow,width: 800))
              /*//Expanded ile bir şekilde birbirine sığması sağlanır taşmaları engeller!
              Expanded(flex: 2,child: Icon(Icons.add_circle, size: 64, color: Colors.red)),
              Expanded(child: Icon(Icons.add_a_photo, size: 64, color: Colors.red)),
              Expanded(child: Icon(Icons.send, size: 64, color: Colors.red)),
              Expanded(child: Icon(Icons.grade, size: 64, color: Colors.red)),
              Expanded(child: Icon(Icons.add_circle, size: 64, color: Colors.red)),
              Expanded(child: Icon(Icons.add_a_photo, size: 64, color: Colors.red)),
              Expanded(child: Icon(Icons.send, size: 64, color: Colors.red)),
              Expanded(child: Icon(Icons.grade, size: 64, color: Colors.red))*/
            ],
          ),
        ),
        /*Center(
          // WidthFactor ve HeightFactor içinde bulundurduğu Container "katı" kadar büyür!
          widthFactor: 4,
          heightFactor: 4,
          child: Container(
            // Container içinde bulundurduğu kadar yer kaplar!
            //width: 200,
            //height: 200,
            constraints: BoxConstraints(minHeight: 100, minWidth: 100),
            alignment: Alignment.center,
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            color: Colors.purple,
            child: Column(
              children: [
                Text(
                  "İbrahim Can Erdoğan",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      backgroundColor: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  color: Colors.cyanAccent,
                  margin: EdgeInsets.fromLTRB(10, 20, 30, 10),
                  width: 100,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    "Child Container",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                )
              ],
            ),
          ),
        ),*/
        /*Text(
          "Merhaba Dünya!",
          style: TextStyle(
              backgroundColor: Colors.pink,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),*/
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Tıklandı");
          },
          backgroundColor: Colors.yellow,
          child: Icon(Icons.send, color: Colors.pink),
        ),
      ),
    );
  }

  Column nameColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          "İ",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          "B",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          "R",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          "A",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          "H",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          "İ",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          "M",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

//Body içinde Örnek
class containerDersleri extends StatelessWidget {
  const containerDersleri({
    Key? key,
    required String img,
  })  : _img = img,
        super(key: key);

  final String _img;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(12.0),
        child: Text(
          "İbrahim Can Erdoğan",
          style: TextStyle(fontSize: 50),
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            image: DecorationImage(
                image: NetworkImage(_img),
                fit: BoxFit.scaleDown,
                repeat: ImageRepeat.repeatX),
            border: Border.all(width: 4, color: Colors.amber),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30), topRight: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                  color: Colors.green, offset: Offset(40, 20), blurRadius: 20),
              BoxShadow(
                  color: Colors.blue, offset: Offset(0, -20), blurRadius: 10),
            ]),
      ),
    );
  }
}
