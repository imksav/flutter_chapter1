import 'package:chapter1/widgets/bgImage.dart';
import 'package:flutter/material.dart';

class ChangeName extends StatelessWidget {
  const ChangeName({
    Key key,
    @required this.myAnswer,
    @required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String myAnswer;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          BgImage(),
          SizedBox(
            height: 50,
          ),
          Text(
            "\nWhich team won the 2073's final match won by 5 runs?\n$myAnswer",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              hintText: "Enter the winner team's name",
              labelText: "Enter the winner team's name",
              border: OutlineInputBorder(),
            ),
          ),
          Image.asset(
            "assets/pebs.jpg",
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "\nWhich team won the 2074's final match won by 4 wickets?\n$myAnswer",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              hintText: "Enter the winner team's name",
              labelText: "Enter the winner team's name",
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
