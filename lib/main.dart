import 'package:chapter1/pages/home_page.dart';
import 'package:chapter1/pages/login.dart';
import 'package:chapter1/pages/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.deepPurple,
      title: "Awesome App",
      theme: ThemeData(primarySwatch: Colors.purple),
      routes: {
        "/login": (context) => LogInPage(),
        "/home": (context) => HomePage(),
      },
      home: Constants.prefs.getBool("loggedIn") == true
          ? HomePage()
          : LogInPage(),
    );
  }
}
