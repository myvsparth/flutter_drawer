import 'package:flutter/material.dart';
import 'package:flutter_drawer/pages/about_page.dart';
import 'package:flutter_drawer/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MasterPagePage(),
    );
  }
}

class MasterPagePage extends StatefulWidget {
  @override
  _MasterPagePageState createState() => _MasterPagePageState();
}

class _MasterPagePageState extends State<MasterPagePage> {
  int pageNo;
  @override
  void initState() {
    super.initState();
    pageNo = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Title'),
      ),
      body: getPage(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Drawer Header',
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'Home',
                style: TextStyle(
                  color: (pageNo == 1 ? Colors.blue : Colors.black),
                  fontSize: (pageNo == 1 ? 18 : 16),
                ),
              ),
              onTap: () {
                setState(() {
                  pageNo = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text(
                'About',
                style: TextStyle(
                  color: (pageNo == 2 ? Colors.blue : Colors.black),
                  fontSize: (pageNo == 2 ? 18 : 16),
                ),
              ),
              onTap: () {
                setState(() {
                  pageNo = 2;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  getPage() {
    switch (pageNo) {
      case 1:
        return HomePage();
        break;
      case 2:
        return AboutPage();
        break;
      default:
    }
  }
}
