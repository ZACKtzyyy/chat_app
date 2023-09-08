import 'package:flutter/material.dart';
import 'register.dart';
import 'forgot.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            TextField(decoration: InputDecoration(hintText: "Enter email")),
            TextField(decoration: InputDecoration(hintText: "Enter password"), obscureText: true),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
              },
              child: Text("No account? Register now"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPage()));
              },
              child: Text("Forgot your password"),
            ),
          ],
        ),
      ),
    );
  }
}
