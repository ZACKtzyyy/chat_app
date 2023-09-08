import 'package:chat_app/widgets/home.dart';
import 'package:chat_app/widgets/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Page"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(hintText: "Enter email"),
            controller: emailEditingController, // Assign a controller
          ),
          TextField(
            decoration: InputDecoration(hintText: "Enter password"),
            obscureText: true,
            controller: passwordEditingController, // Assign a controller
          ),
          ElevatedButton(
            onPressed: () {
              _auth
                  .createUserWithEmailAndPassword(
                  email: emailEditingController.text,
                  password: passwordEditingController.text)
                  .then((val) {
                var user = val.user;
                if (user != null) {
                  print("Successfully Registered");
                } else {
                  print("Something is wrong");
                }
              });
            },
            child: Text("Register"),
          ),
        ],
      ),
    );
  }
}
