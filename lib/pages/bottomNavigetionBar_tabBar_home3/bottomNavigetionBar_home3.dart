import 'package:flutter/material.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home3/tabBar_home3_1.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home3/tabBar_home3_2.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home3/tabBar_home3_3.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home3/tabBar_home3_4.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home3/tabBar_home3_5.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home3/tabBar_home3_6.dart';

class bottomNavigetionBar_home3 extends StatefulWidget {
  @override
  _bottomNavigetionBar_home3State createState() => _bottomNavigetionBar_home3State();
}

class _bottomNavigetionBar_home3State extends State<bottomNavigetionBar_home3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 6,
       child:Scaffold(
         appBar: AppBar(title: Material( 
           color: Color(0xFF212121),      
           child: TabBar(
               tabs: [
                 Tab(text: ('单管')),
                 Tab(text: ('双管')),
                 Tab(text: ('有源钳位')),
                 Tab(text: ('半桥')),
                 Tab(text: ('全桥')),
                 Tab(text: ('推挽')),
               ], 
               isScrollable: true, 
               ),
         ),
         ),

               body: TabBarView(
                 children: [
                   tabBar_home3_1(),
                   tabBar_home3_2(),
                   tabBar_home3_3(),
                   tabBar_home3_4(),
                   tabBar_home3_5(),
                   tabBar_home3_6(),
                 ],
               ),
       ),
        
    ),);
    
       }
}