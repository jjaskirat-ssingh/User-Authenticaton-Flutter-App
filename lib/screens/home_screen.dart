import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        // drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.purple[900],
          title: Text("Flutter Application"),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: Text(
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple[900]),
                "You logged in successfully!"),
          ),
        ),
      ),
    );
  }
}
