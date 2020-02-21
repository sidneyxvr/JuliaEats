import 'package:flutter/material.dart';
import 'package:julia_eats/src/utils/flushbar.dart';
import 'package:julia_eats/src/widgets/shared/link-text.widget.dart';

class ForgetPassword extends StatelessWidget {

  TextEditingController emailController = TextEditingController();

  void _resetPassword(BuildContext context){
    print(emailController.text);
    CustomFlushbar.showSuccess(context, "Teste");
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        LinkText("Esqueci minha senha", (){
          showDialog(
            context: context,
            builder: (BuildContext context){
              return AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
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
        }),
      ],
    );
  }
}