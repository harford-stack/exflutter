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
          title: Text("상단 영역"),
        ),
        drawer: Drawer(
          width: 250,
          child: ListView(
            children: [
              // Container(height: 200, color: Colors.green[200]),
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.green[200]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("profile2.jpg"),
                    ),
                    SizedBox(height: 5,),
                    Text("맥그로우", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                    Text("World`s Best Boss", style: TextStyle(color: Colors.white),)
                  ],
                )
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("홈"),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text("카메라", style: TextStyle(fontWeight: FontWeight.bold),),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("로그아웃", style: TextStyle(fontWeight: FontWeight.bold),),
                onTap: (){},
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Image.asset("profile2.jpg", width: 60, height: 60, fit: BoxFit.contain,),
              title: Text("아주 좋은 총", style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text("인천 부평삼거리 앞"),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
              onTap: (){
                print("클릭됨");
              },
            ),
            Divider(height: 1, color: Colors.black),
            ListTile(
              leading: Image.asset("profile3.jpg", width: 60, height: 60, fit: BoxFit.contain,),
              title: Text("아주 좋은 인형", style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text("부산 삼거리 앞"),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
              onTap: (){
                print("클릭됨");
              },
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
              IconButton(onPressed: (){}, icon: Icon(Icons.home_max_sharp)),
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new)),
            ],
          ),
        ),
      ),
    );
  }
}