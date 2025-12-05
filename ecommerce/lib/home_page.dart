import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> products = [];
  @override
  void initState() {
    super.initState();
    getProducts();
  }

  Future<void> getProducts() async {
    Dio dio = Dio();
    try {
      final response = await dio.get("https://fakestoreapi.com/products");
      // print(response.data);

      products = List.from(response.data);
      setState(() {});
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: products.isEmpty
            ? Text("Product is empty")
            : ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Text(products[index]["title"]);
                },
              ),
      ),
    );
  }
}
