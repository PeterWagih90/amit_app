import 'package:amit_app/custom_icons_icons.dart';
import 'package:flutter/material.dart';


class PasswordWidget extends StatefulWidget {
  const PasswordWidget({
    Key? key,
    required this.passwordController,
    required this.colorDefault,
  }) : super(key: key);

  final TextEditingController passwordController;
  final Color colorDefault;

  @override
  _PasswordWidgetState createState() =>
      _PasswordWidgetState(passwordController, colorDefault);
}

class _PasswordWidgetState extends State<PasswordWidget> {
  FocusNode? _passwordFocusNode;
  final TextEditingController passwordController;
  final Color colorDefault;
  _PasswordWidgetState(this.passwordController, this.colorDefault);

  @override
  void initState() {
    super.initState();
    _passwordFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _passwordFocusNode?.dispose();
    super.dispose();
  }

  void _requestFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(_passwordFocusNode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      controller: passwordController,
      focusNode: _passwordFocusNode,
      onTap: _requestFocus,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        labelText: 'Password',
        labelStyle: const TextStyle(color: Colors.black),
        suffixIcon: Icon(
          CustomIcons.eye_slash,
          size: 15,
          color: _passwordFocusNode!.hasFocus ? colorDefault : Colors.black,
        ),
        suffixIconColor:
        _passwordFocusNode!.hasFocus ? colorDefault : Colors.black,
        iconColor: _passwordFocusNode!.hasFocus ? colorDefault : Colors.black,
      ),
    );
  }
}