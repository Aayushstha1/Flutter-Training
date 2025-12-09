import 'package:ecommerce_subbase/product_form_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 4,
        title: Text(
          "Namuna Ecommerce",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 6,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// IMAGE
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.grey.shade300,
                    child: Center(
                      child: Icon(
                        Icons.shopping_bag,
                        size: 80,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// NAME
                      Text(
                        "Product Name",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 6),

                      /// PRICE + BUTTON
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$ 120",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.blueGrey,
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.add_shopping_cart,
                                  size: 16,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  "Add",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        onPressed: () {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => ProductFormPage()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
