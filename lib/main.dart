import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Demo Chat App",
        theme: ThemeData(colorScheme: ColorScheme.light(primary: Colors.blue),
            appBarTheme: AppBarTheme(backgroundColor: Colors.blue)
        ),
        home: LoginPage()
    );
  }
}

  
