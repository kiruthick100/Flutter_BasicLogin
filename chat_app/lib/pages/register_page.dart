import 'package:flutter/material.dart';
import 'package:chat_app/componenet/text_field.dart';
import 'package:chat_app/componenet/button.dart';

class Register extends StatefulWidget {
  final void Function()?onTap;
  const Register({super.key,required this.onTap});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
 var emailcontroller =TextEditingController();
  var PasswoardController=TextEditingController();
  var conformPasswoardController=TextEditingController();
  void Register()
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
   MyTextField(controller:conformPasswoardController, hintText: "Conform passwoard", abscureText: true),
                        const SizedBox(height: 50,),

            MyButton(onTap: Register,text:"Signup"),
 Row(mainAxisAlignment:MainAxisAlignment.center
            ,children: [Text("Not a member ?"),SizedBox(width:4),
            GestureDetector(onTap: widget.onTap,child:Text("Login"))
            ],)            ],))
      
      
            )
    ,)
    );
  }
}