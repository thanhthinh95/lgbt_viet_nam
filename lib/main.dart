import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "fasd",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: "xin chao",
          onPressed: null,
        ),
        title: Center(
          child: Text ('Heello 2'),
        ),
      ),

      body: Center(
        child:
      ),
    );
  }
}

class test extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

