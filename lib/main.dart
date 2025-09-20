import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title: Text("Sedang memutar"), centerTitle: true),
        body: Center(
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(12),
            ),
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.album, size: 100),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Di sini ada judul lagu",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Di sini ada nama artis"),
                        ],
                      ),
                      Icon(Icons.favorite_border, color: Colors.red),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
