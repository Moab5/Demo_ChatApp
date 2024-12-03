import 'package:flutter/material.dart';

import 'Widgets/login_textfield.dart';

class LoginPage extends StatelessWidget {

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void loginUser (context) {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      print(usernameController);
      print(passwordController);

      Navigator.pushReplacementNamed(
        context, '/chat', arguments: usernameController.text
      );
      print("Login Successful!");
    } else {
      print("Login unsuccessful");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
          CustomScrollView(
            scrollDirection: Axis.vertical,
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child:
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text("Let's sign you in!",
                        textAlign: TextAlign.center,
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
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 17,
                            fontStyle: FontStyle.italic
                        ),
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            LoginTextfield(
                              hintText: "Useername",
                              validator: (value) {
                                if (value != null && value.isNotEmpty &&
                                    value.length < 4) {
                                  return "Username should be more than 3 characters";
                                } else if (value != null && value.isEmpty) {
                                  return "Please enter username";
                                }
                                return null;
                              },
                              controller: usernameController,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            LoginTextfield(
                              hintText: "Password",
                              validator: (value) {
                                if (value != null && value.isNotEmpty &&
                                    value.length < 8) {
                                  return "Password should be more than 7 characters";
                                } else if (value != null && value.isEmpty) {
                                  return "Password cannot be empty";
                                }
                                return null;
                              },
                              controller: passwordController,
                              obscureText: true,
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {loginUser(context);},
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 25),
                          )
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context, '/chat',
                                arguments: usernameController.text
                            );
                          },
                          child: Text(
                              'Continue as Guest'
                          )
                      )
                    ]
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}