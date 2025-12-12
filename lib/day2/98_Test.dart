import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _txt = "Flutter";
  var _color = Colors.purple[200];
  var _align = Alignment.center;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Align(
          alignment: _align,
          child: ElevatedButton(
            onPressed: (){
              setState(() {
                _txt == "Flutter" ? _txt = "졸잼" : _txt = "Flutter";
              }); // 이거 삼항연산자로 3개 다 해보기
            },
            child: Text(_txt),
            style: ElevatedButton.styleFrom(
              backgroundColor: _color,
            ),
          ),
        ),
      ),
    );
  }
}