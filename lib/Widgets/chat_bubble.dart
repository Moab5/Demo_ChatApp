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
        margin: const EdgeInsets.only(
            left: 10,
            top: 10,
            right: 5,
            bottom: 10
        ),
        width: 250,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: alignment == Alignment.centerLeft ? Colors.grey : Colors.blue,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(20),
              topRight: const Radius.circular(20),
              bottomRight: alignment == Alignment.centerLeft ?
              const Radius.circular(20) : const Radius.circular(0),
              bottomLeft: alignment == Alignment.centerRight ?
              const Radius.circular(20) : const Radius.circular(0),
            )
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(message, style: const TextStyle(
                fontSize: 15, color: Colors.white
            ),),
            Image.asset("assets/chat_bubble.jpeg")
          ],
        ),
      ),
    );
  }
}
