import 'package:flutter/material.dart';

import 'Widgets/login_textfield.dart';

class LoginPage extends StatelessWidget {

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  LoginPage({super.key});

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
                      const Text("Let's sign you in!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54
                        ),
                      ),
                      Image.asset(
                        'assets/home_page.jpeg',
                        height: 300,
                      ),
                      const Text("Welcome Back! \nYou've been missed.",
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
                              hintText: "Username",
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
                            const SizedBox(
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
                          child: const Text(
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
                          child: const Text(
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