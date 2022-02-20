import 'package:amit_app/Movie.dart';
import 'package:amit_app/password_widget.dart';
import 'package:flutter/material.dart';

class Tasks extends StatelessWidget {
  Tasks({Key? key}) : super(key: key);

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
          body: Stack(
            children: [
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: Image(
                    image: AssetImage('assets/images/amit.jpg'),
                    height: 200,
                    width: 250,

                    color: Color.fromRGBO(255, 255, 255, 0.3),
                    colorBlendMode: BlendMode.modulate,
                  ))
              ,
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
             child: Text("Test")
          )
            ],
          ),
        ));
  }

  Color findMyColor(int periority) {
    Color color = Colors.green;
    switch (periority) {
      case 1:
        color = Colors.red;
        break;
      case 2:
        color = Colors.orange;
        break;

      case 3:
        color = Colors.lightGreen;
        break;
    }
    return color;
  }
}
