import 'package:flutter/material.dart';
import 'profile.dart';
import 'chat.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatelessWidget {
  var staffs = [
    {"name": "Hakim", "department": "I.T"},
    {"name": "Aniq", "department": "Operation"},
    {"name": "Iqbal", "department": "Sales"},
    {"name": "Arif", "department": "I.T"}
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: staffs.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(staffs[index]['name']!),
              subtitle: Text(staffs[index]['department']!),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatPage()),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
