import 'package:flutter/material.dart';
import 'package:julia_eats/src/utils/error-snack.dart';

class EntrarButton extends StatelessWidget {
  Function _submit;

  EntrarButton(this._submit);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.all(12),
      onPressed: (){
        _submit();
        ErrorSnack.showError(context, "Campo email inválido");
      },
      child: Text(
        "Entrar",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}