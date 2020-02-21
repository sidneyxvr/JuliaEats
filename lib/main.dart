import 'package:flutter/material.dart';
import 'package:julia_eats/src/pages/login.page.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.purple,
    accentColor: Colors.white,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.purple,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      textTheme: ButtonTextTheme.accent,
    ),
  ),
  home: Login(),
));