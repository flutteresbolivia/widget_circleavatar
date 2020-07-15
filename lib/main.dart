import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String url =
      "https://c.wallhere.com/photos/36/21/Son_Goku_Ultra_Instinct_Goku_Mastered_ultra_instinct_Dragon_Ball_Dragon_Ball_Z_Kai_Super_Saiyan_Blue_Dragon_Ball_Super_Super_Saiyan-1264347.jpg!d";
  final Decoration decoration = BoxDecoration(
      color: Colors.white, // border color
      shape: BoxShape.circle);
  final TextStyle style = TextStyle(fontSize: 60, fontWeight: FontWeight.bold);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0), // borde width
                decoration: decoration,
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.red,
                  backgroundImage: NetworkImage(url),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10.0), // borde width
                decoration: decoration,
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.blue,
                  child: Text("MA", style: style),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
