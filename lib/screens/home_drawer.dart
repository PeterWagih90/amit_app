import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text(
            "Drawer",
            style: TextStyle(color: Colors.white),
          ),
        ),
        drawer: Drawer(
            child: ListView(children: <Widget>[
              Container(
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    // backgroundImage: NetworkImage(
                    // "https://images.unsplash.com/photo-1545167622-3a6ac756afa4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60 "),
                  ),
                  accountName: Text(
                    "esra",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  accountEmail: Text(
                    "esra@gmail.com",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              )
            ])));
  }
}