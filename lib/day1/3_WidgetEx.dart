import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Row( //column도 있음
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // dot(.) 다음 옵션들 살펴보기
          children: [
            Text("zz"),
            Icon(Icons.highlight),
            ElevatedButton(onPressed: (){}, child: Text("버튼")),
            IconButton(onPressed: (){}, icon: Icon(Icons.highlight)),
            Container(width: 50, height: 50, color: Colors.blue),
            Image.asset("profile1.png", width: 70, height: 70),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("profile2.jpg"),
            )
          ],
        ),
      ),
    );
  }
}
