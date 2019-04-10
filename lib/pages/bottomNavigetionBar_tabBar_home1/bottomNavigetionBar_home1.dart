import 'package:flutter/material.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home1/tabBar_home1_1.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home1/tabBar_home1_2.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home1/tabBar_home1_3.dart';

class bottomNavigetionBar_home1 extends StatefulWidget {
  @override
  _bottomNavigetionBar_home1State createState() => _bottomNavigetionBar_home1State();
}

class _bottomNavigetionBar_home1State extends State<bottomNavigetionBar_home1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: DefaultTabController(
        length: 3,    
       child:Scaffold(
         appBar: AppBar(title: Material(
           color: Color(0xFF212121),     
           child: TabBar(
               tabs: [
                 Tab(text: ('降压')),
                  Tab(text: ('升降压')),
                 Tab(text: ('升压')),

               ],      
               ),
         ),
         ),

               body: TabBarView(
                 children: [
                  tabBar_home1_1(),
                  tabBar_home1_2(),
                  tabBar_home1_3(),
                 ],
               ),
       ),
        
    ),);
    
       }
}