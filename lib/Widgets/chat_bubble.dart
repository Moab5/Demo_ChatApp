import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final Alignment alignment;
  const ChatBubble({super.key, required this.alignment, required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        margin: EdgeInsets.only(
            left: 10,
            top: 10,
            right: 5,
            bottom: 10
        ),
        width: 250,
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("$message", style: TextStyle(
                fontSize: 15, color: Colors.white
            ),),
            Image.network("https://images.unsplash.com/photo-1625908773164-648287a5e5fb?q=80&w=3560&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
          ],
        ),
        decoration: BoxDecoration(
            color: alignment == Alignment.centerLeft ? Colors.grey : Colors.blue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight: alignment == Alignment.centerLeft ?
              Radius.circular(20) : Radius.circular(0),
              bottomLeft: alignment == Alignment.centerRight ?
              Radius.circular(20) : Radius.circular(0),
            )
        ),
      ),
    );
  }
}
