import 'package:flutter/material.dart';
import 'UserEdit.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {

    List<Map<String, Object>> list = [
      {"userId" : "hong", "name" : "홍길동", "age" : 30},
      {"userId" : "kim", "name" : "김철수", "age" : 25},
      {"userId" : "park", "name" : "박영희", "age" : 20}
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text("사용자 목록"),
      ),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("아이디: ${list[index]["userId"].toString()}, 이름: ${list[index]["name"].toString()}"),
              subtitle: Text("나이: ${list[index]["age"]}"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const UserEdit()),
                      );
                    },
                    icon: Icon(Icons.edit)
                  ),
                  IconButton(
                    onPressed: (){

                    },
                    icon: Icon(Icons.delete)
                  ),
                ],
              ),
            );
          }
      ),
    );
  }
}
