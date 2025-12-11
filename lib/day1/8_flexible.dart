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
        body: Row(
          children: [
            Flexible(
              child: Container(color: Colors.green[200]), 
              flex: 1,
            ),
            Flexible(
              flex: 2,
              child: Column(
                children: [
                  Flexible(child: Container(color: Colors.yellow[200],), flex: 1,),
                  Flexible(child: Container(color: Colors.blue[200],), flex: 1),
                  Flexible(child: Container(color: Colors.pink,), flex: 1)
                ],
              )
            ),
            Flexible(
              child: Container(color: Colors.brown[200],), 
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
