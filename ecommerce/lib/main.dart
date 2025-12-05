import 'package:ecommerce/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce App',
      debugShowCheckedModeBanner: false,
      theme:  ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red)
      ),
      home: const HomePage(),
    );

  }
}
