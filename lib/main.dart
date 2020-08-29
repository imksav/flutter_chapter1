import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      color: Colors.deepPurple,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myAnswer = 'Answer the questions?';
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Chapter1"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: [
                  Image.asset(
                    "assets/pebs.jpg",
                  ),
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
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          reverse: false,
          children: [
            UserAccountsDrawerHeader(
              arrowColor: Colors.amber,
              accountName: Text("Keshav Bhandari"),
              accountEmail: Text("imksav@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                    NetworkImage("https://imksav.com/uploads/imksav.jpg"),
              ),
              otherAccountsPictures: [
                Text("Gmail2"),
                Text("Gmail3"),
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              subtitle: Text("Everything"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                print("Pressed Home");
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("ImKsav"),
              subtitle: Text("Developer"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("imksav@gmail.com"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myAnswer = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
