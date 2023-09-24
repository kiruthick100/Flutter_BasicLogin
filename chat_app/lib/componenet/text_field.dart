import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController  controller;
  final String hintText;
  final bool abscureText;
  // final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.abscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText:abscureText,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Color.fromARGB(255, 139, 137, 137),),),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 243, 233, 233))),
        // focusColor: Colors.black,
        fillColor:Colors.blueGrey,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(color:Color.fromARGB(26, 232, 230, 230))
      ),

    );
  }
}