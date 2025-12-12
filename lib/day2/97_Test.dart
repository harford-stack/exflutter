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
  TextEditingController _todoCtrl = TextEditingController();

  List<String> todoList = [];
  List<bool> todoChecked = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,              // ⭐ 가운데 정렬
          title: Text("할 일"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  // 입력창
                  Expanded(
                    child: TextField(
                      controller: _todoCtrl,
                      decoration: InputDecoration(
                        hintText: "할 일 입력하기",
                      ),
                    ),
                  ),

                  SizedBox(width: 10),

                  // 추가 버튼 (입력창 오른쪽)
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (_todoCtrl.text.trim().isNotEmpty) {
                          todoList.add(_todoCtrl.text);
                          todoChecked.add(false);
                          _todoCtrl.clear();
                        }
                      });
                    },
                    child: Text("추가"),
                  ),
                ],
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: todoList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      todoList[index],
                      style: TextStyle(
                        decoration: todoChecked[index]
                            ? TextDecoration.lineThrough
                            : null,
                      ),
                    ),

                    // 체크박스
                    leading: Checkbox(
                      value: todoChecked[index],
                      onChanged: (value) {
                        setState(() {
                          todoChecked[index] = value!;
                        });
                      },
                    ),

                    // 삭제 아이콘 추가
                    trailing: IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        setState(() {
                          todoList.removeAt(index);
                          todoChecked.removeAt(index);
                        });
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
