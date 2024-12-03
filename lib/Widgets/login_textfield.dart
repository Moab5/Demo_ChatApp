import 'package:flutter/material.dart';

class LoginTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final FormFieldValidator<String>? validator;
  final bool obscureText;

  const LoginTextfield({
    super.key,
    required this.controller,
    required this.validator,
    required this.hintText,
    this.obscureText = false
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hintText
      ),
    );
  }
}
