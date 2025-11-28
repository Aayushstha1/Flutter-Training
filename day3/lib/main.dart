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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // margin: EdgeInsets.all(20),
            // padding: EdgeInsets.all(24),
            height: 300,
            width: double.maxFinite,
            color: Colors.blueGrey,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: double.maxFinite,
                  color: Colors.red,
                  child: Image.network(
                    "https://imgs.search.brave.com/9K0qALSEMupNPeGe-HQOzEHZ__9IyODhysj0E_wSCB8/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi8xLzEyLzE5/MjVfRm9yZF9Nb2Rl/bF9UX3RvdXJpbmcu/anBnLzUxMnB4LTE5/MjVfRm9yZF9Nb2Rl/bF9UX3RvdXJpbmcu/anBn",
                    fit: BoxFit.cover,
                  ),
                ),

                SizedBox(height: 16),
                // Padding(padding:
                // Padding: const EdgeInsets.only(left:12),

                // )
                Text(
                  "This is the title Text",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("Hi it's me Aayush stha", textAlign: TextAlign.justify),
              ],
            ),
          ),

          SizedBox(height: 10),
        Row(
            children: [
              Container(height: 100, width: 100, color: Colors.red),
              Container(height: 100, width: 100, color: Colors.yellow),
            ],
          ),
        ],
      ),

      // body: Text(
      //   "Hello Babe",
      //   style: TextStyle(fontSize: 24, color: Colors.amber),
      // ),
      //       body: Row(
      //         children: [
      //           Container(
      //             height: 100,
      //             width: 100,
      //             color: Colors.blue,
      //             child: Center(
      //               child: Text(
      //                 "Hello",
      //                 style: TextStyle(color: Colors.brown, fontSize: 20),
      //               ),
      //             ),
      //           ),
      //           SizedBox(width: 12),

      //           Container(
      //             height: 100,
      //             width: 100,
      //             color: Colors.pink,
      //             child: Center(
      //               child: Text(
      //                 "HI",
      //                 style: TextStyle(color: Colors.white, fontSize: 20),
      //               ),
      //             ),
      //           ),
      //           Spacer(),
      //           Container(
      //             height: 100,
      //             width: 100,
      //             color: Colors.red,
      //             child: Center(
      //               child: Text(
      //                 "Hello Babe",
      //                 style: TextStyle(color: Colors.white, fontSize: 20),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
    );
  }
}
