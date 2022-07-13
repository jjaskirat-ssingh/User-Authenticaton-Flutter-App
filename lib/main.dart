//import 'dart:html';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/screens/home_screen.dart';
import 'package:flutter_application/screens/login_screen.dart';
import 'package:flutter_application/Theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: LoginScreen(),
        themeMode: ThemeMode.system, // dark or light or system
        theme: lightMode,
        darkTheme: darkMode,
        routes: {
          "/home": (context) => HomeScreen(),
          "/": (context) => LoginScreen(),
        });
  }
}
