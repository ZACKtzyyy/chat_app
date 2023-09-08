import 'package:flutter/material.dart';
import 'register.dart';
import 'login.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ForgotPage extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  final emailEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot ke"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(hintText: "Enter email"),
            controller: emailEditingController,
          ),
          ElevatedButton(
            onPressed: () {
              _auth.sendPasswordResetEmail(email: emailEditingController.text).then((val) {
                print("Password Successfully sent");
              }).catchError((error) {
                print("Error sending password reset email: $error");
              });
            },
            child: Text("Send Password Reset Email"),
          ),
        ],
      ),
    );
  }
}
