import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  final Function onSaved;
  int requiredLength;
  bool requireLowercase;
  bool requireUppercase;
  bool requireNonAlphanumeric;
  bool requireDigit;
  var _valid = true;

  PasswordInput({this.onSaved, this.requiredLength = 0, this.requireLowercase = false, 
    this.requireUppercase = false, this.requireDigit = false, this.requireNonAlphanumeric = false});
  
  @override
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  
  String validate(String value){  
    if(value.length < widget.requiredLength)
    {
      return "Senhas devem conter ao menos ${widget.requiredLength} caracteres";
    }
    if(widget.requireNonAlphanumeric && !RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%\s-]').hasMatch(value)) 
    {
      return "Senhas devem conter ao menos um caracter não alfanumérico";
    }
    if(widget.requireDigit && !RegExp(r'[0-9]').hasMatch(value)){
      return "Senhas devem conter ao menos um digito ('0'-'9')";
    }
    if(widget.requireLowercase && !RegExp(r'[a-z]').hasMatch(value))
    {
      return "Senhas devem conter ao menos um caracter em caixa alta ('A'-'Z')";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Senha",
        labelStyle: TextStyle(
          color: widget._valid ? Theme.of(context).primaryColor : Colors.red,
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
        ),
      ),
      obscureText: true,
      validator: (val) => validate(val),
      onSaved: widget.onSaved,
    );
  }
}