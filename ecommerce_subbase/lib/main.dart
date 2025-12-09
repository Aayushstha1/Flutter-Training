
import 'package:ecommerce_subbase/home_page.dart';
import 'package:ecommerce_subbase/login_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://rjgrbzsmnzvkzjhepcvw.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJqZ3JienNtbnp2a3pqaGVwY3Z3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjUxNDMxNzcsImV4cCI6MjA4MDcxOTE3N30.ULT_0DHhEXNjRpt-0QYMEKKYd-HnGNGzBtIVcNC_bq4",
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      home: Supabase.instance.client.auth.currentUser != null
          ? HomePage()
          : const LoginPage(),
    );
  }
}