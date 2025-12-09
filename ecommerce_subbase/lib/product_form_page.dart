import 'package:ecommerce_subbase/helper.dart';
// import 'package:ecommerce_supabase/helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ProductFormPage extends StatefulWidget {
  ProductFormPage({super.key});

  @override
  State<ProductFormPage> createState() => _ProductFormPageState();
}

class _ProductFormPageState extends State<ProductFormPage> {
  TextEditingController nameController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  XFile? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add Product",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                hintText: "Enter product name",
                hintStyle: TextStyle(color: Colors.grey.shade600),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),
              ),
            ),

            SizedBox(height: 16),

            TextField(
              controller: priceController,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                hintText: "Enter product price",
                hintStyle: TextStyle(color: Colors.grey.shade600),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),
              ),
            ),

            SizedBox(height: 20),

            GestureDetector(
              onTap: () async {
                ImagePicker imagePicker = ImagePicker();
                imageFile = await imagePicker.pickImage(
                  source: ImageSource.gallery,
                );
                setState(() {});
              },
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade50,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.deepPurple, width: 1.5),
                ),

                //this only works on web, for mobile use image.File
                //when youre getting image locally form gallery or camera
                child: imageFile != null
                    ? Image.network(imageFile!.path, fit: BoxFit.cover)
                    : Icon(
                        Icons.add_photo_alternate_outlined,
                        size: 70,
                        color: Colors.deepPurple,
                      ),
              ),
            ),

            SizedBox(height: 30),

            SizedBox(
              height: 50,
              width: double.infinity,
              child: FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),

                onPressed: () async {
                  if (nameController.text.trim().isEmpty ||
                      priceController.text.trim().isEmpty) {
                    return showSnackBar(context, "Provide valid inputs");
                  }
                  try {
                    final price = double.parse(priceController.text);
                    final supabaseClient = Supabase.instance.client;

                    String? imageUrl;
                    if (imageFile != null) {
                      final imageBinary = await imageFile!.readAsBytes();

                      imageUrl = await supabaseClient.storage
                          .from('images')
                          .uploadBinary(
                            imageFile!.path.split('/').last,
                            imageBinary,
                          );
                    }

                    await supabaseClient.from('products').insert({
                      'Name': nameController.text,
                      'Price': price,
                      'user_id': supabaseClient.auth.currentUser!.id,
                      'Image_url': imageUrl,
                    });

                    showSnackBar(context, "Product added successfully");
                    Navigator.of(context).pop();
                  } catch (e) {
                    showSnackBar(
                      context,
                      "Failed to add product: ${e.toString()}",
                    );
                  }
                },
                child: Text(
                  "Post",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
