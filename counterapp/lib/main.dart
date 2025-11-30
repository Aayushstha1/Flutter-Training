import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(child: Text("Counter App")),
      ),

      body: Center(
        child: Text(
          "You have pressed $counter times so far",
          style: TextStyle(fontSize: 20),
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (counter > 0)
            FloatingActionButton(
              onPressed: () {
                if (counter == 0) return;
                setState(() {
                  counter--;
                });
              },
              child: Icon(Icons.remove),
            ),
          SizedBox(width: 15),

          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
