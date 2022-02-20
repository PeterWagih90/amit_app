import 'package:amit_app/signup.dart';
import 'package:amit_app/tasks.dart';
import 'package:flutter/material.dart';

import 'MoviesList.dart';
import 'login.dart';

void main() {
  const colorDarkRed = const Color(0xffa70000);
  const int _redPrimaryValue = 0xffe9002d;
  const MaterialColor red = MaterialColor(
    _redPrimaryValue,
    <int, Color>{
      50: Color(0xFFFFEBEE),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: Color(_redPrimaryValue),
      600: Color(0xFFE53935),
      700: Color(0xFFD32F2F),
      800: colorDarkRed,
      900: colorDarkRed,
    },
  );

  const String _title = 'Amit Learning App';
  runApp(Main(title: _title, red: red));
}

class Main extends StatelessWidget {

  const Main({
    Key? key,
    required String title,
    required this.red,
  }) : _title = title, super(key: key);

  final String _title;
  final MaterialColor red;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: red,
      ),

      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) =>  SignUpScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/login': (context) =>  LoginScreen(),
      },
    );
  }
}
