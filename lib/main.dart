import 'package:chapter1/pages/home_page.dart';
import 'package:chapter1/pages/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.deepPurple,
      title: "Awesome App",
      theme: ThemeData(primarySwatch: Colors.purple),
      routes: {
        "/login": (context) => LogInPage(),
        "/home": (context) => HomePage(),
      },
      home: LogInPage(),
    );
  }
}
