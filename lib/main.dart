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
          width: 100,
          height: 100,
          color: Colors.green,
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
