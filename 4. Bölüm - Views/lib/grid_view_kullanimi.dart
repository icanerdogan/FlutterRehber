import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  const GridViewOrnek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //gridViewCount();
    return GridView.extent(
      //Elemanın maksimum uzunluğunu verir!
      maxCrossAxisExtent: 300,
      primary: true,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        Container(
            alignment: Alignment.center,
            color: Colors.tealAccent,
            child: Text("Merhaba Flutter", textAlign: TextAlign.center)
        ),
        Container(
            alignment: Alignment.center,
            color: Colors.tealAccent,
            child: Text("Merhaba Flutter", textAlign: TextAlign.center)
        ),
        Container(
            alignment: Alignment.center,
            color: Colors.tealAccent,
            child: Text("Merhaba Flutter", textAlign: TextAlign.center)
        ),
        Container(
            alignment: Alignment.center,
            color: Colors.tealAccent,
            child: Text("Merhaba Flutter", textAlign: TextAlign.center)
        )
      ],
    );

  }

  GridView gridViewCount() {
    // crossAxisCount: Soldan sağa kaç eleman isteniyor!
    return GridView.count(
    crossAxisCount: 2,
    reverse: true,
    // False olursa elemanların bittiğine dair widget çıkmaz true olursa hep çıkar!
    primary: true,
    // Yukarıdan aşağı değil soldan sağa kaymayı sağlar!
    scrollDirection: Axis.horizontal,
    padding: EdgeInsets.all(10),
    crossAxisSpacing: 20,
    mainAxisSpacing: 40,
    children: [
      Container(
        alignment: Alignment.center,
        color: Colors.tealAccent,
        child: Text("Merhaba Flutter", textAlign: TextAlign.center)
      ),
      Container(
          alignment: Alignment.center,
          color: Colors.tealAccent,
          child: Text("Merhaba Flutter", textAlign: TextAlign.center)
      ),
      Container(
          alignment: Alignment.center,
          color: Colors.tealAccent,
          child: Text("Merhaba Flutter", textAlign: TextAlign.center)
      ),
      Container(
          alignment: Alignment.center,
          color: Colors.tealAccent,
          child: Text("Merhaba Flutter", textAlign: TextAlign.center)
      )
    ],
  );
  }
}
