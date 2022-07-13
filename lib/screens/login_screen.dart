import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = "";
  String password = "";
  String error = "";

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      child: Column(
        children: [
          Image.asset(
            "assets/images/login.jpg",
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Text(
            "Welcome to Flutter Application",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          TextFormField(
            onChanged: (value) {
              setState(() {
                email = value;
              });
            },
            decoration: InputDecoration(
                hintText: "example@abc.com", labelText: "Enter email address"),
          ),
          SizedBox(height: 20),
          TextFormField(
            obscureText: true,
            onChanged: (value) {
              setState(() {
                password = value;
              });
            },
            decoration: InputDecoration(
                hintText: "Enter Password", labelText: "Enter Password"),
          ),
          SizedBox(height: 40),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.purple[900],
                  padding: EdgeInsets.fromLTRB(40, 10, 40, 10)),
              onPressed: () {
                if (email == "jjaskirat.ssingh@gmail.com" &&
                    password == "123456") {
                  Navigator.pushNamed(context, "/home");
                } else {
                  setState(() {
                    error = "Email or password is wrong!";
                  });
                }
              },
              child: Text("LOGIN", style: TextStyle(fontSize: 24))),
          SizedBox(height: 40),
          Text(error, style: TextStyle(color: Colors.red[900], fontSize: 23))
        ],
      ),
    ));
  }
}
