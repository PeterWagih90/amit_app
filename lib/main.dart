import 'package:amit_app/custom_icons_icons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SignUp());
}

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  static const colorRed = const Color(0xffe9002d);
  static const colorDarkRed = const Color(0xffa70000);

  static const MaterialColor red = MaterialColor(
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
  static const int _redPrimaryValue = 0xffe9002d;

  static const String _title = 'Amit Learning App';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: colorRed,
        primaryColorDark: colorDarkRed,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: red,
      ),
      home: Scaffold(
        // appBar: AppBar(title: const Text(_title)),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage('assets/images/amit.jpg'),
                      height: 200,
                      width: 250,
                    )),
                SizedBox(
                  height: 50,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(70, 0, 70, 0),
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(70, 0, 70, 0),
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextFormField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.black),
                      suffixIcon: Icon(CustomIcons.eye_slash,size: 15,),
                      suffixIconColor: colorRed,
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(100, 10, 100, 0),
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: ElevatedButton(
                      child: const Text(
                        'Login',
                        style: TextStyle(),
                      ),
                      onPressed: () {
                        print("Email: ${emailController.text}");
                        print("Password: ${passwordController.text}");
                      },
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: colorRed)))),
                    )),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.white.withAlpha(0),
                      ),
                      onPressed: () {
                        //forgot password screen
                        print("Go to SignUp");
                      },
                      child: const Text(
                        'Go SignUp'
                            ,style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            )),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: colorRed,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          currentIndex: 2,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Menu',
            ),
          ],
        ),
      ),
    );
  }
}


class SignUp extends StatelessWidget {

  SignUp({Key? key}) : super(key: key);
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  static const colorRed = const Color(0xffe9002d);
  static const colorDarkRed = const Color(0xffa70000);

  static const MaterialColor red = MaterialColor(
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
  static const int _redPrimaryValue = 0xffe9002d;
  static const String _title = 'Amit Learning App';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: red,
      ),
      home: Scaffold(
        // appBar: AppBar(title: const Text(_title)),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage('assets/images/amit.jpg'),
                      height: 200,
                      width: 250,
                    )),
                SizedBox(
                  height: 50,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(70, 0, 70, 0),
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: nameController,
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      labelText: 'Name',
                        labelStyle: TextStyle(
                            color: Colors.black
                        )
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(70, 0, 70, 0),
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(70, 0, 70, 0),
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextFormField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.black),
                      suffixIcon: Icon(CustomIcons.eye_slash,size: 15,),
                      suffixIconColor: colorRed,
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(100, 10, 100, 0),
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: ElevatedButton(
                      child: const Text(
                        'SignUp',
                        style: TextStyle(),
                      ),
                      onPressed: () {
                        print("Name: ${nameController.text}");
                        print("Email: ${emailController.text}");
                        print("Password: ${passwordController.text}");
                      },
                      style: ButtonStyle(
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: colorRed)))),
                    )),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.white.withAlpha(0),
                      ),
                      onPressed: () {
                        //Go to Login
                        print("Go to Login");
                      },
                      child: const Text(
                        'Have an account?\nGo Login'
                        ,style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            )),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: colorRed,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          currentIndex: 2,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Menu',
            ),
          ],
        ),
      ),
    );
  }
}