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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // dot(.) 다음 옵션들 살펴보기
          children: [
            ElevatedButton(onPressed: (){}, child: Text("버튼 1")),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.heart_broken_outlined, color: Colors.red, size: 50,),
                Icon(Icons.home, color: Colors.blue, size: 50,),
                Icon(Icons.star, color: Colors.green, size: 50,)
              ],
            ),
            Image.asset("profile2.jpg", width: 100, height: 100),
          ],
        ),
      ),
    );
  }
}
