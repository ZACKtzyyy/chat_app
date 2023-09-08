import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  var _messages =[
  {"sender":"KimZy","message":"Woi", "dt":"7 September 8.00 a.m."},
  {"sender":"Tester","message":"cubaan", "dt":"2 September 8.00 a.m."},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Chat page"),),
    body: Column(
      children: [
        
        Expanded(child: ListView.builder(
          itemCount: _messages.length,
            itemBuilder: (context, index){
            return Card(
              child: ListTile(
                title: Text(_messages[index]["message"]!),
                subtitle: Text("${_messages[index]["sender"]} ${_messages[index]["dt"]}"),
              ),
            );
            }),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(child: TextField(decoration: InputDecoration(hintText: "Enter Message"),)),
              IconButton(onPressed: (){}, icon: Icon(Icons.send))
            ],
          ),
        ),
      ],
    ),
    );
  }
}

