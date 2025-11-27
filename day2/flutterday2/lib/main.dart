import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //   return MaterialApp(
    //     home: Scaffold(
    //       appBar: AppBar(title: Text("helow title")),

    //       body: Text("Hello babe"),
    //     ),
    //   );
    // }

    return MaterialApp(
      home: Scaffold(body: Text("Hellow dart ", style: TextStyle(
        fontSize: 24, 
        color: Colors.blueAccent
      ))),
    );
  }
}
