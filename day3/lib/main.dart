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
      body: ListView(
        children: [
          for (int i = 0; i < 5; i++) ...{
            Container(
              margin: EdgeInsets.all(10),
              // padding: EdgeInsets.all(24),
              height: 300,
              width: double.maxFinite,
              color: Colors.grey,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    width: double.maxFinite,
                    color: Colors.red,

                    child: Image.network(
                      "https://plus.unsplash.com/premium_photo-1760509344623-71e2ccf9ff80?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(height: 16),

                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      "This is title text",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  SizedBox(height: 4),

                  Text(
                    "Hi, this is description Hi, this is description Hi, this is description Hi, this is description this is description Hi,",
                  ),
                ],
              ),
            ),

            Container(
              height: 200,
              width: double.maxFinite,
              color: Colors.blueGrey,
              child: Row(
                children: [
                  Container(
                    // height: double.maxFinite,
                    // width: 200,
                    // color: Colors.red,
                    child: CircleAvatar(
                      radius: 100,

                      backgroundImage: NetworkImage(
                        "https://plus.unsplash.com/premium_photo-1760509344623-71e2ccf9ff80?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      height: double.maxFinite,

                      color: Colors.blue,

                      child: Column(
                        children: [
                          Text(
                            "Namuna student",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          },
        ],
      ),
    );
  }
}
