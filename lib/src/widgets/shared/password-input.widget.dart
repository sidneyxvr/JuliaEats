import 'package:flutter/material.dart';

class PasswordInput extends StatelessWidget {
  TextEditingController _passwordController;

  PasswordInput(this._passwordController);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Senha",
      ),
      controller: _passwordController,
      obscureText: true,
    );
  }
}