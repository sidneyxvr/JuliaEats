import 'package:flutter/material.dart';
import 'package:julia_eats/src/utils/error-snack.dart';

class ForgetPassword extends StatelessWidget {

  TextEditingController emailController = TextEditingController();

  void _resetPassword(BuildContext context){
    print(emailController.text);
    ErrorSnack.showSuccess(context, "Teste");
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: GestureDetector(
              child: Text("Esqueci minha senha"),
              onTap: (){
                showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: Text("Esqueci minha senha"),
                      content: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: "Email",
                        ),
                      ),
                      actions: <Widget>[
                        RaisedButton(
                          color: Colors.grey,
                          onPressed: (){
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            "Voltar",
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                        ),
                        RaisedButton(
                          color: Colors.green,
                          onPressed: () => _resetPassword(context),
                          child: Text(
                            "Enviar",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 8,)
                      ],
                    );
                  }
                );
              },
            ),
        ),
      ],
    );
  }
}