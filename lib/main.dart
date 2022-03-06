import 'package:amit_app/screens/Counter.dart';
import 'package:amit_app/screens/cart.dart';
import 'package:amit_app/screens/login.dart';
import 'package:amit_app/screens/signup.dart';
import 'package:amit_app/tasks.dart';
import 'package:flutter/material.dart';

import 'module/cart_item.dart';
import 'screens/MoviesList.dart';
import 'screens/home_drawer.dart';

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

      initialRoute: '/cartScreen',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) =>  SignUpScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/login': (context) =>  LoginScreen(),
        '/home': (context) => HomeDrawer(),
        'counter': (context) => Counter(),
        '/cartScreen': (context) => CartScreen(getCartItems()),
      },
    );
  }


  List<CartItem> getCartItems() {
    return [
      CartItem(
          "OnemanShoes",
          "vey long space x of one of it's kind of material can be used in many ocaaasions",
          "https://source.unsplash.com/user/c_v_r/100x100",
          100,
          "EGP",
          1),
      CartItem("WomanOnMarse", "it's kind of material many wow deal",
          "https://source.unsplash.com/user/c_v_r/100x100", 750, "EGP", 3),
      CartItem("HeroOnEarth", "having fun with apse",
          "https://source.unsplash.com/user/c_v_r/100x100", 150, "EGP", 2),
      CartItem("WomanOnMarse", "it's kind of material many wow deal",
          "https://source.unsplash.com/user/c_v_r/100x100", 750, "EGP", 3),
      CartItem(
          "OnemanShoes",
          "vey long space x of one of it's kind of material can be used in many ocaaasions",
          "https://source.unsplash.com/user/c_v_r/100x100",
          100,
          "EGP",
          1),
    ];
  }
}
