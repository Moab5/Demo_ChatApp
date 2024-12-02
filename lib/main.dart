import 'package:flutter/material.dart';
import 'chat_page.dart';
import 'login_page.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Demo Chat App",
        theme: ThemeData(
            colorScheme: const ColorScheme.light(primary: Colors.blue,
            ),
            appBarTheme: const AppBarTheme(backgroundColor: Colors.blue)
        ),
        home: LoginPage(),
      routes: {'/chat': (context) => ChatPage()},
    );
  }
}

  
