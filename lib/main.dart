import 'package:flutter/material.dart';

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


class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
          onPressed: () { print("Button Clicked");
          },
      ),
      body: Text("Hello World!"),
      );
  }
}

  
