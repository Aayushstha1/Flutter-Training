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
      home: Scaffold(
        //   body: Text("Hellow dart ", style: TextStyle(
        //   fontSize: 24,
        //   color: Colors.blueAccent
        // ))
        body: Center(
          child: Text(
            "Flutter day2",
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
        ),
      ),

      //     mainAxisAlignment: MainAxisAlignment.start,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [

      //       Expanded(child: Container(height: 100, width: 100, color: Colors.amber)),
      //      Expanded(child: Container(height: 100, width: 100, color: Colors.blue)),
      //       // Text("Learning art")
      //       //    body:    Container(
      //       //   color: Colors.cyanAccent,
      //       //   width: double.infinity,
      //       //   height: 100,
      //       //   child:  Text('Helloooooo  mayalu'),
      //       // )
      //       // // Text("Hello babe ") ,
      //       // // Text("Hajur babe")
      //       // Text("learning dart"),
      //       // Text("Hello namuna hello hello hello "),
      //     ],
      //   ),
      // ),
    );
  }
}
