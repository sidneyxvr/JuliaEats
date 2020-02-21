import 'package:flutter/material.dart';
import 'package:julia_eats/src/utils/flushbar.dart';

class SignInButton extends StatelessWidget {
  Function _submit;

  SignInButton(this._submit);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton(
        padding: EdgeInsets.all(12),
        onPressed: (){
          _submit();
          // CustomFlushbar.showError(context, "Campo email inválido");
        },
        child: Text(
          "Entrar",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}