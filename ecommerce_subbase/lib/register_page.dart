import 'package:flutter/material.dart';
import 'package:ecommerce_subbase/helper.dart';
import 'package:ecommerce_subbase/home_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Card(
            color: Colors.grey.shade300,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Register",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 36),

                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Enter your email",
                      border: OutlineInputBorder(),
                    ),
                  ),

                  SizedBox(height: 16),

                  TextField(
                    controller: passwordController,
                    obscureText: isObsecure,
                    decoration: InputDecoration(
                      suffix: IconButton(
                        onPressed: () {
                          setState(() {
                            isObsecure = !isObsecure;
                          });
                        },
                        icon: Icon(
                          isObsecure ? Icons.visibility : Icons.visibility_off,
                        ),
                      ),
                      hintText: "Enter your password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 24),

                  FilledButton(
                    onPressed: () async {
                      if (emailController.text.isEmpty ||
                          passwordController.text.isEmpty) {
                        showSnackBar(context, "Empty emal or Paaword");
                        return;
                      }
                      try {
                        final res = await Supabase.instance.client.auth.signUp(
                          email: emailController.text,
                          password: passwordController.text,
                        );

                        print(res.toString());

                        showSnackBar(context, "SSign up successful");

                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      } catch (e) {
                        showSnackBar(context, "failed:${e.toString()}");
                      }
                    },
                    child: Text("Register"),
                  ),
                  SizedBox(height: 16),

                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Login"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
