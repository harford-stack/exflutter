import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[200],
        ),
        drawer: Drawer(),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            child: Text("zzz"),
            margin: EdgeInsets.fromLTRB(20, 50, 0, 0),
            padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
            color: Colors.blue[200],
            width: double.infinity, height: 200,
          ),
        ),
        bottomNavigationBar: BottomAppBar(),
      ),
    );
  }
}