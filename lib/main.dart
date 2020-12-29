import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Side Menu Bar',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Padding(
                  padding: const EdgeInsets.only(top:10.0),
                  child: Text("Raunak Priyam",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'IndieFlower'
                  ),),
                ),
                accountEmail: Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Text("sagrfhdjjk@gmail.com",
                  style: TextStyle(
                    fontFamily: 'IndieFlower'
                  ),),
                ),
            currentAccountPicture: Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/noddy2.jpg'),
              ),
            ),
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                  "Profile",
              style: TextStyle(

                  fontFamily: 'IndieFlower'

              ),),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notification",
              style: TextStyle(
                  fontFamily: 'IndieFlower'
              ),),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.send),
              title: Text("Website",
              style: TextStyle(
                  fontFamily: 'IndieFlower'
              ),),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.arrow_forward),
              title: Text("Blog",
              style: TextStyle(
                  fontFamily: 'IndieFlower'
              ),),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.star_border),
              title: Text("About Us",
              style: TextStyle(
                  fontFamily: 'IndieFlower'
              ),),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Contact",
              style: TextStyle(
                  fontFamily: 'IndieFlower'
              ),),
            ),
            Divider(),
            Expanded(
                child:Align(
                  alignment: Alignment.topLeft,
                  child: ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings',
                    style: TextStyle(
                        fontFamily: 'IndieFlower'
                    ),),
                  ),
                )
            ),



          ],
        ),
      ),
    );
  }
}
