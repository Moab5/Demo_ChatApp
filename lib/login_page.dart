import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      body: Center(
        child: Column(
          children: [
            Text("Let's sign you in!",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black54
              ),
            ),
            Image.network(
              "https://images.unsplash.com/photo-1578357078586-491adf1aa5ba?q=80&w=3464&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              height: 300,
            ),
            Text("Welcome Back! \nYou've been missed.",
              style: TextStyle(
                  fontSize: 17,
              ),
            ),

          ]
        ),
      ),
    );
  }
}