import 'package:ecommerce_subbase/home_page.dart';
import 'package:ecommerce_subbase/login_page.dart';
import 'package:ecommerce_subbase/register_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://tfxcrrynjpodlumcxakk.supabase.co",
    anonKey:
        " eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRmeGNycnluanBvZGx1bWN4YWtrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjUwNjA2ODUsImV4cCI6MjA4MDYzNjY4NX0.PIInTmGevKdrHpUkRdYIlXhfBACGAA3BARwZLu90dtA",
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ecommerce App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Supabase.instance.client.auth.currentUser != null
          ? HomePage()
          : const LoginPage(),
    );
  }
}
