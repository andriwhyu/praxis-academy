import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Latihan Hero Animation",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          width: 100,
          height: 100,
          child: Image(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://riausky.com/assets/berita/original/416655000-antarafoto-nadiem-makarim-ke-istana-211019-wpa-2.jpg"),
          ),
        ),
      ),
    );
  }
}
