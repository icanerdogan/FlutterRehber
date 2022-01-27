import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _imgURL =
        "https://www.artranked.com/images/50/5000fdc65d9ef4d3b8b124b89abc52e5.jpeg";
    String _logoURL =
        "https://i.pinimg.com/originals/4a/d6/86/4ad686066a4c82254f47dcd4baf8f50b.jpg";
    return Center(
      child: Column(
        children: [
          // Bütün Satırın yüksekliğini en yüksek olana göre sabitliyor!
          IntrinsicHeight(
            child: Row(
              // Maksimum yüksekliğe ulaş ama IntrinsicHeight sayesinde en büyüğü kadar büyür!
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.black,
                    child: Image.asset(
                      "assets/images/car2.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.black,
                    child: Image.network(
                      _imgURL,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.red,
                    child: CircleAvatar(
                      child: Text(
                        "İbrahim Can",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black),
                      ),
                      backgroundColor: Colors.pink,
                      foregroundColor: Colors.white,
                      backgroundImage: NetworkImage(_logoURL),
                    ),
                  ),
                )
              ],
            ),
          ),
          // İnternetten görsel gelinceye kada başka görsel koymaya yarıyor!
          Container(
            height: 200,
            child: FadeInImage.assetNetwork(
                fit: BoxFit.cover,
                placeholder: "assets/images/loading.gif",
                image: _imgURL),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              // Boş alan tutan widget!
              child: Placeholder(
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
