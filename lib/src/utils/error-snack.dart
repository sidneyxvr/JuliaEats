import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class ErrorSnack{
  static void showError(BuildContext context, String error) {
    Flushbar(
      icon: Icon(
        Icons.error,
        color: Colors.white,
      ),
      messageText: Text(
        error,
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
      duration: Duration(seconds: 3),   
      backgroundColor: Colors.red, 
      borderRadius: 8,
      margin: EdgeInsets.all(5),
    )..show(context);
  }

  static void showSuccess(BuildContext context, String error) {
    Flushbar(
      icon: Icon(
        Icons.check,
        color: Colors.white,
      ),
      messageText: Text(
        error,
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
      duration: Duration(seconds: 3),   
      backgroundColor: Colors.green, 
      borderRadius: 8,
      margin: EdgeInsets.all(5),
    )..show(context);
  }
}