import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductListingPage(),
    );
  }
}

class ProductListingPage extends StatelessWidget {
  ProductListingPage({super.key});

  final List<Map<String, dynamic>> products = [
    {
      "title": "iPhone",
      "description": "iPhone is the stylist phone ever",
      "price": 1000,
      "color": Colors.purple,
      "label": "iPhone",
    },
    {
      "title": "Pixel",
      "description": "Pixel is the most featureful phone ever",
      "price": 800,
      "color": Colors.blue,
      "label": "pixel 1",
    },
    {
      "title": "Laptop",
      "description": "Laptop is most productive development tool",
      "price": 2000,
      "color": Colors.green,
      "label": "laptop",
    },
    {
      "title": "Tablet",
      "description": "Tablet is the most useful device ever for meeting",
      "price": 1500,
      "color": Colors.amber[700],
      "label": "tablet",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Listing"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return Card(
            elevation: 3,
            margin: const EdgeInsets.only(bottom: 15),
            child: Row(
              children: [
                // Left side color box
                Container(
                  height: 120,
                  width: 120,
                  color: product['color'],
                  child: Center(
                    child: Text(
                      product['label'],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                // Right side details
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product['title'],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(product['description']),
                        const SizedBox(height: 10),
                        Text(
                          "Price: ${product['price']}",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
