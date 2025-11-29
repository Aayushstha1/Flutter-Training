import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ProductPage());
  }
}

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Listing")),

      // Whole screen scroll
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ---------------- iPhone ----------------
            productCard(
              color: Colors.purple,
              leftText: "iPhone",
              title: "iPhone",
              description: "iPhone is the stylist phone ever",
              price: "RS.1000",
            ),

            // ---------------- Pixel ----------------
            productCard(
              color: Colors.blue,
              leftText: "pixel 1",
              title: "Pixel",
              description: "Pixel is the most featureful phone ever",
              price: "RS.800",
            ),

            // ---------------- Laptop ----------------
            productCard(
              color: Colors.green,
              leftText: "laptop",
              title: "Laptop",
              description: "Laptop is the most productive development tool",
              price: "RS.2000",
            ),

            // ---------------- Tablet ----------------
            productCard(
              color: Colors.amber,
              leftText: "tablet",
              title: "Tablet",
              description: "Tablet is the most useful device ever for meeting",
              price: "RS.1500",
            ),
          ],
        ),
      ),
    );
  }

  // -------------------- SIMPLE CARD WIDGET --------------------
  Widget productCard({
    required Color color,
    required String leftText,
    required String title,
    required String description,
    required String price,
  }) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          // Left colored box
          Container(
            height: 120,
            width: 120,
            color: color,
            child: Center(
              child: Text(
                leftText,
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ),

          // Right description
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(description),
                  SizedBox(height: 5),
                  Text(
                    "Price: $price",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
