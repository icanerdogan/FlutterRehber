import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onPressed: () {},
            onLongPress: () {
              debugPrint("Uzun Basıldı!");
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                foregroundColor: MaterialStateProperty.all(Colors.yellow),
                overlayColor:
                    MaterialStateProperty.all(Colors.yellow.withOpacity(0.5))),
            child: Text("Text Button")),
        TextButton.icon(
            onPressed: () {},
            style: ButtonStyle(
                // MaterialStateProperty ile istenilen duruma göre tepki alınabilir!
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.teal;
              }
              if (states.contains(MaterialState.hovered)) {
                return Colors.orange;
              }
              return null;
            })),
            icon: Icon(Icons.alarm_add),
            label: Text("Text Button with Icon")),
        ElevatedButton(
          onPressed: () {},
          child: Text("Elevated Button"),
          style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              side: BorderSide(color: Colors.purple, width: 2)),
        ),
        ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text("Elevated Button with Icon")),
        OutlinedButton(onPressed: () {}, child: Text("Outlined Button"),style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
          )
        ),),
        OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.ac_unit_outlined),
            label: Text("Outlined Button with Icon"))
      ],
    );
  }
}
