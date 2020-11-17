import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

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
      body: Center(
        child: Container(
          color: Colors.white,
          child: Center(
              child: Text(
            'Hello!',
            style: TextStyle(fontSize: 40.0),
          )),
        ),
      ),
      drawer: Drawer(
        child: ListView(children: <Widget>[
          DrawerHeader(
            child: Text('Artem Ulko', style: TextStyle(fontSize: 24, color: Colors.white),),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () { print('item tapped'); },
          ),
          ListTile(
            title: Text('Lists'),
            onTap: () { print('item tapped'); },
          ),
          ListTile(
            title: Text('Topics'),
            onTap: () { print('item tapped'); },
          ),
          ListTile(
            title: Text('Bookmarks'),
            onTap: () { print('item tapped'); },
          ),
          ListTile(
            title: Text('Moments'),
            onTap: () { print('item tapped'); },
          ),
        ]),
      ),
    );
  }
}
