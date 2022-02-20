import 'package:amit_app/Movie.dart';
import 'package:amit_app/password_widget.dart';
import 'package:flutter/material.dart';

class MoviesList extends StatelessWidget {
  MoviesList({Key? key}) : super(key: key);

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

  List<Movie> moviesList = [
    Movie("The Sun", "Peter", 1),
    Movie("The Martian", "Esraa", 2),
    Movie("The Earth", "Ahmed", 3),
    Movie("The Sun", "Peter", 1),
    Movie("The Martian", "Esraa", 2),
    Movie("The Earth", "Ahmed", 3),
    Movie("The Sun", "Peter", 1),
    Movie("The Martian", "Esraa", 2),
    Movie("The Earth", "Ahmed", 3),
    Movie("The Sun", "Peter", 1),
    Movie("The Martian", "Esraa", 2),
    Movie("The Earth", "Ahmed", 3),
    Movie("The Sun", "Peter", 1),
    Movie("The Martian", "Esraa", 2),
    Movie("The Earth", "Ahmed", 3),
    Movie("The Sun", "Peter", 1),
    Movie("The Martian", "Esraa", 2),
    Movie("The Earth", "Ahmed", 3),
    Movie("The Sun", "Peter", 1),
    Movie("The Martian", "Esraa", 2),
    Movie("The Earth", "Ahmed", 3),
  ];
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
          body: ListView.builder(
            itemCount: moviesList.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                    leading: CircleAvatar(
                      child: Text(
                        index.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.normal, color: Colors.white),
                      ),
                      backgroundColor: findMyColor(moviesList[index].periority),
                      radius: 20.0,
                    ),
                    subtitle: Text(
                      moviesList[index].director,
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    title: Text(moviesList[index].name,
                        style: TextStyle(color: Colors.black, fontSize: 20))),
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {


              final snackBar = SnackBar(
                duration: Duration(seconds: 3),
                content: const Text('Yay! A SnackBar!'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    // Some code to undo the change.
                  },
                ),
              );

              // Find the ScaffoldMessenger in the widget tree
              // and use it to show a SnackBar.
              Scaffold.of(context).showSnackBar(snackBar);
            },
            backgroundColor: red,
            child: const Icon(Icons.add_a_photo),
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
