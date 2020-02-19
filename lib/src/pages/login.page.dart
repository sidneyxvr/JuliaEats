import 'package:flutter/material.dart';
import 'package:julia_eats/src/models/auth/user-login.dart';
import 'package:julia_eats/src/widgets/shared/email-input.widget.dart';
import 'package:julia_eats/src/widgets/login/signin-button.widget.dart';
import 'package:julia_eats/src/widgets/login/forget-password.widget.dart';
import 'package:julia_eats/src/widgets/shared/password-input.widget.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  var login;

  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  void submit(){
    setState(() {
      print(emailController.text);
      login = UserLogin(emailController.text, senhaController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (BuildContext context){
          return Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                EmailInput(emailController),
                PasswordInput(senhaController),
                ForgetPassword(),
                EntrarButton(submit),
              ],
            ),
          );
        },
      ) 
    );
  }
}