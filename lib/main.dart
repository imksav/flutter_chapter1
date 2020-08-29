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
                    "In 2073's final match.\nWon by 5 runs.",
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
                    decoration: InputDecoration(
                      hintText: "Enter the winner team's name",
                      labelText: "Enter the winner team's name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  Image.asset(
                    "assets/pebs.jpg",
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
        onPressed: () {},
        child: Icon(Icons.favorite),
      ),
    );
  }
}
