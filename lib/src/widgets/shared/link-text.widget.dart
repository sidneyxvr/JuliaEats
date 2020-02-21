import 'package:flutter/material.dart';

class LinkText extends StatelessWidget {
  var _text = "";
  Function _function;

  LinkText(this._text, this._function);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: 
      GestureDetector(
        child: Text(
          _text,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
        onTap: _function,
      ),
    );
  }
}