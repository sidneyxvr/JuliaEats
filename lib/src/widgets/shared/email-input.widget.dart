import 'package:flutter/material.dart';

class EmailInput extends StatelessWidget {
  TextEditingController _emailController;
  EmailInput(this._emailController);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Email",
      ),
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
    );
  }
}