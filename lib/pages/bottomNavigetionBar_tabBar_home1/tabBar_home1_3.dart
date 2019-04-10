import 'package:flutter/material.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home1/navigator_tabBar3/navigator_tabBar3_1.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home1/navigator_tabBar3/navigator_tabBar3_2.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home1/navigator_tabBar3/navigator_tabBar3_3.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home1/navigator_tabBar3/navigator_tabBar3_4.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home1/navigator_tabBar3/navigator_tabBar3_5.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home1/navigator_tabBar3/navigator_tabBar3_6.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home1/tabBar_home1_1.dart';

class tabBar_home1_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
body: Container(

  child:  GridView.count(
      primary: true,
      padding: const EdgeInsets.all(1.0),
      crossAxisCount: 2,
      mainAxisSpacing: 1.0,
      childAspectRatio: 9/10,
      crossAxisSpacing: 1.0,
      children: <Widget>[
          InkWell(
          child:MyGridView (image: "Icon-64 (4).png",teks: "电感"),
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_tabBar3_1(),),
            );
    },),

         InkWell(
          child: MyGridView (image: "Icon-64 (3).png",teks: "MOS管"),
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_tabBar3_2()),
            );
    },),

    InkWell(
          child: MyGridView (image: "Icon-64 (5).png",teks: "二极管"), 
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_tabBar3_3()),
            );
    },),
       InkWell(
          child:   MyGridView (image: "Icon-64 (2).png",teks: "输入电容"),
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_tabBar3_4()),
            );
    },),

     InkWell(
          child: MyGridView (image: "Icon-64 (2).png",teks: "输出电容"),  
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_tabBar3_5()),
            );
    },),
     InkWell(
          child:MyGridView (image: "Icon-64 (6).png",teks: "负载"), 
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_tabBar3_6()),
            );
    },),
      
   
      ],
    ),
)
    );
  }
}
