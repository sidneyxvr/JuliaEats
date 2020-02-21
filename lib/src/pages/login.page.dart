import 'package:flutter/material.dart';
import 'package:julia_eats/src/models/auth/user-login.dart';
import 'package:julia_eats/src/widgets/shared/email-input.widget.dart';
import 'package:julia_eats/src/widgets/login/signin-button.widget.dart';
import 'package:julia_eats/src/widgets/shared/password-input.widget.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  var login = UserLogin();

  final formKey = GlobalKey<FormState>();

  void _submit(){
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      print(login.email + ' ' + login.senha);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Builder(
          builder: (BuildContext context){
            return Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  EmailInput((val) => login.email = val),
                  SizedBox(height: 20,),
                  PasswordInput(onSaved: (val) => login.senha = val, requireDigit: true, requiredLength: 6,),
                  SizedBox(height: 20,),
                  SignInButton(_submit),
                ],
              ),
            );
          },
        ) 
      ,)
    );
  }
}