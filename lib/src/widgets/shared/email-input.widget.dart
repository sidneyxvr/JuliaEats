import 'package:flutter/material.dart';
import 'package:julia_eats/src/models/auth/user-login.dart';


class EmailInput extends StatelessWidget {

  final Function _onSaved;
  EmailInput(this._onSaved);

  bool _validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    return !regex.hasMatch(value);
  }

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
        labelText: "Email",
        labelStyle: TextStyle(
          color: Theme.of(context).primaryColor,
        ),
        enabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        errorStyle: TextStyle(
          color: Colors.red,
        )
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (val) => _validateEmail(val) ? 'Email inválido': null,
      onSaved: _onSaved,
    );
  }
}