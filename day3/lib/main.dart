import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Text(
      //   "Hello Babe",
      //   style: TextStyle(fontSize: 24, color: Colors.amber),
      // ),
      body: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
            child: Center(
              child: Text(
                "Hello",
                style: TextStyle(color: Colors.brown, fontSize: 20),
              ),
            ),
          ),
          SizedBox(width: 12),

          Container(
            height: 100,
            width: 100,
            color: Colors.pink,
            child: Center(
              child: Text(
                "HI",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: Center(
              child: Text(
                "Hello Babe",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
