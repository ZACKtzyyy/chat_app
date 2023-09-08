import 'package:flutter/material.dart';
import 'register.dart';
import 'home.dart';
import 'forgot.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatelessWidget {
  var _auth = FirebaseAuth.instance;
  var emailEditingController = TextEditingController();
  var passwordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:(Text("Login Page"))
      ),
      body:
      Column(

        children: [
          TextField(decoration: InputDecoration(hintText: "Enter email")),
          TextField(decoration: InputDecoration(hintText: "Enter password"), obscureText: true),
          ElevatedButton(
            onPressed: () {
              _auth.signInWithEmailAndPassword(email: emailEditingController.text, password: passwordEditingController.text).then((val){
                var user = val.user;
                if (user != null){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                }
                else{
                  print("Something is wrong");
                }

              });

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
    );
  }
}
