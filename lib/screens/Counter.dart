import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  var counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  setState(() {
                    counter--;
                  });
                },
                child: Text("Minus")),
            Text(
              "$counter",
              style: TextStyle(fontSize: 22.0, color: Colors.black),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: Text("Plus")),
          ],
        ),
      ),
    );
  }
}
