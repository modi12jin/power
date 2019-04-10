import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home1/bottomNavigetionBar_home1.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home2/bottomNavigetionBar_home2.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home3/bottomNavigetionBar_home3.dart';


void main() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xFF212121),
    statusBarColor: Color(0xFF212121),
  ));
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp>{
  int index=0;
  List<Widget> pages=[
    bottomNavigetionBar_home1(),
    bottomNavigetionBar_home2(),
    bottomNavigetionBar_home3(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(
        brightness:Brightness.dark,
      ),
      home:Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          fixedColor: Colors.red,
          onTap: (int idx){
            setState(() {
              index=idx;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.swap_calls),
              title: Text('基本'),
            ),

            BottomNavigationBarItem(
              icon: const Icon(Icons.undo),
              title: Text('反激'),
            ),

            BottomNavigationBarItem(
              icon: const Icon(Icons.redo),
              title: Text('正激'),
            ),
          ],
      ),
      body:pages[index] ,
    ),
    ); 
  }
}
