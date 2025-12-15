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
          centerTitle: true,
          title: Text("할 일"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _todoCtrl,
                      decoration: InputDecoration(
                        hintText: "할 일 입력하기",
                      ),
                    ),
                  ),

                  SizedBox(width: 10),

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

                    leading: Checkbox(
                      value: todoChecked[index],
                      onChanged: (value) {
                        setState(() {
                          todoChecked[index] = value!;
                        });
                      },
                    ),

                    trailing: IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () => showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            title: Text("삭제 확인"),
                            content: Text("삭제하시겠습니까?"),
                            actions: [
                              TextButton(
                                onPressed: (){
                                  setState(() {
                                    todoList.removeAt(index);
                                    todoChecked.removeAt(index);
                                    Navigator.of(context).pop();
                                  });
                                },
                                child: Text("네")
                              ),
                              TextButton(
                                  onPressed: (){
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("아니오")
                              )
                            ],
                          );
                        }
                      )
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
