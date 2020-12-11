import 'package:flutter/material.dart';

const _padding = EdgeInsets.all(16.0);

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title: Text("Hello Rectangle")),
      body: HelloRectangle(),
    ),
  ));
}

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: _padding,
        color: Colors.greenAccent,
        height: 400.00,
        width: 300.0,
        child: Padding(
          padding: _padding,
          child: Column(
            children: [
              Text(
                'Hello!',
                style: TextStyle(fontSize: 40.0),
                textAlign: TextAlign.center,
              ),
              Text(
                'world!',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
              FlatButton(
                color: Colors.red,
                onPressed: () {
                  print('FlatButton onPressed');
                },
                child: Text(
                  "Button",
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
