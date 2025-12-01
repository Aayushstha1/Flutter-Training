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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  double? bmi;
  String? category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("BMI", style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 16,
          children: [
            TextField(
              controller: weightController,
              decoration: InputDecoration(
                hintText: "Enter your weight in kg",
                labelText: "Weight in kg",
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              controller: heightController,
              decoration: InputDecoration(
                hintText: "Enter your height in meter",
                labelText: "Height in meter",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(
              width: double.maxFinite,
              height: 48,
              child: FilledButton(
                onPressed: onCalculate,

                child: Text("Calculate"),
              ),
            ),

            SizedBox(height: 24),
            if (bmi != null)
              SizedBox(
                width: double.maxFinite,
                child: Card(
                  color: Colors.grey.shade300,
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      spacing: 12,
                      children: [
                        Text(
                          "Result",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        Text("BMI is: $bmi"),

                        Text("Category: $category"),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  void onCalculate() {
    double? weightInKg = double.tryParse(weightController.text);
    double? heightInMeter = double.tryParse(heightController.text);

    if (weightInKg == null || heightInMeter == null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Invalid height or weight")));
    } else {
      bmi = weightInKg / (heightInMeter * heightInMeter);

      if (bmi! <= 18) {
        category = "UnderWeight";
      } else if (bmi! > 18 && bmi! <= 25) {
        category = "Normal";
      } else if (bmi! > 25 && bmi! <= 30) {
        category = "overwieght";
      } else {
        category = "Obese";
      }
      setState(() {});
    }
  }
}

