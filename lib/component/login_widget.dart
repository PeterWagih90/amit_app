import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
   LoginWidget({
    Key? key,
    required this.emailController, required this.passwordOpacity,
  }) : super(key: key);

  final TextEditingController emailController;
  double passwordOpacity;

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value){
        setState(() {
          if(value.length>3){
            widget.passwordOpacity = 1;
          }else{
            widget.passwordOpacity = 0;
          }
        });
      },
      controller: widget.emailController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        labelText: 'Email',
        labelStyle: TextStyle(color: Colors.black),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }
}