import 'package:chat_app/Widgets/chat_bubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text("Hi, Moab",
            style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        actions: [
          IconButton(
              onPressed: () {
                print("Icon clicked!");
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return ChatBubble(
                    alignment: index % 2 == 0 ?
                      Alignment.centerRight : Alignment.centerLeft,
                    message: index % 2 == 0 ?
                      "Hi! This is Moab!" : "Hi, Moab! Nice to meet you.");
              }
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.send,
                      color: Colors.white,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
