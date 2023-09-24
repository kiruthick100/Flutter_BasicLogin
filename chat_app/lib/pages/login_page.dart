import 'package:chat_app/componenet/button.dart';
import 'package:chat_app/componenet/text_field.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key,required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailcontroller =TextEditingController();
  var PasswoardController=TextEditingController();
  void Login()
  {

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    body:SafeArea(
      child:  Center(
        child:Padding(
        padding: EdgeInsets.symmetric(horizontal: 30) ,
        child:   Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.message,size:40,),
            MyTextField(controller: emailcontroller, hintText: "email", abscureText: false),
            const SizedBox(height: 50,),
            MyTextField(controller: PasswoardController, hintText: "passwoard", abscureText: true),
                        const SizedBox(height: 50,),

            MyButton(onTap: Login,text:"SignIn"),
            Row(mainAxisAlignment:MainAxisAlignment.center
            ,children: [Text("Not a member ?"),SizedBox(width:4),
            GestureDetector(onTap: widget.onTap,child:Text("register"))
            ],)
            ],))
      
      
            )
    ,)
    );
  }
}