import 'package:chat_app/Widgets/chat_bubble.dart';
import 'package:chat_app/Widgets/chat_input.dart';
import 'package:chat_app/models/chat_message_entity.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text("Hi $username",
            style: const TextStyle(fontWeight: FontWeight.bold),),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              icon: const Icon(Icons.logout))
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
                    entity: index % 2 == 0 ?
                      ChatMessageEntity(
                          text: "Hi, I'm Moab.",
                          id: "001",
                          createdAt: DateTime.now().second,
                          author: Author(userName: username),
                          imageUrl: "assets/chat_bubble.jpeg"
                      ) : ChatMessageEntity(
                      text: "Hello $username.",
                      id: "002",
                      createdAt: DateTime.now().second,
                      author: Author(userName: "ChatBot"),
                    ));
              }
            ),
          ),
          ChatInput()
        ],
      ),
    );
  }
}
