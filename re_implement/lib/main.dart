import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:re_implement/drawer_list.dart';
import 'package:re_implement/newsfeed.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 're-implement',
      home: TwitterLikeApp(),
    );
  }
}

class TwitterLikeApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Icon(EvaIcons.twitter), actions: <Widget>[
        IconButton(icon: Icon(Icons.star), onPressed: () => {})
      ]),
      body: Newsfeed(),
      drawer: Drawer(
        child: ListView(children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Artem Ulko"),
            accountEmail: Text("ulkoart@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor:Colors.white,
              child: Text(
                "AU",
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          DrawerMenuList(),
        ]),
      ),
    );
  }
}
