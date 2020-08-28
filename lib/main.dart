import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      color: Colors.deepPurple,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chapter1"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(8.0),
          alignment: Alignment.center,
          // if we are using decoration, we can't use color outside the decoration; either in decoration or no any decotration
          decoration: BoxDecoration(
            color: Colors.blue,
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                blurRadius: 4.0,
                offset: Offset.zero,
                spreadRadius: 5.0,
              ),
            ],
            borderRadius: BorderRadius.circular(29.0),
            gradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.green,
                Colors.yellow,
              ],
            ),
          ),
          width: 100,
          height: 100,
          child: Text(
            "Flutter\nDay 1\nChapter1\nCompleted",
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible,
            maxLines:
                4, // due to 4 remaining text which was inserted in the line 5 was not visible
            style: TextStyle(color: Colors.purple, fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
