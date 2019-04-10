import 'package:flutter/material.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home1/tabBar_home1_1.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home2/navigator_bottomNavigetionBar/navigator_bottomNavigetionBar1';
import 'package:power/pages/bottomNavigetionBar_tabBar_home2/navigator_bottomNavigetionBar/navigator_bottomNavigetionBar2';
import 'package:power/pages/bottomNavigetionBar_tabBar_home2/navigator_bottomNavigetionBar/navigator_bottomNavigetionBar3';
import 'package:power/pages/bottomNavigetionBar_tabBar_home2/navigator_bottomNavigetionBar/navigator_bottomNavigetionBar4';
import 'package:power/pages/bottomNavigetionBar_tabBar_home2/navigator_bottomNavigetionBar/navigator_bottomNavigetionBar5';
import 'package:power/pages/bottomNavigetionBar_tabBar_home2/navigator_bottomNavigetionBar/navigator_bottomNavigetionBar6';
import 'package:power/pages/bottomNavigetionBar_tabBar_home2/navigator_bottomNavigetionBar/navigator_bottomNavigetionBar7';
import 'package:power/pages/bottomNavigetionBar_tabBar_home2/navigator_bottomNavigetionBar/navigator_bottomNavigetionBar8';
import 'package:power/pages/bottomNavigetionBar_tabBar_home2/navigator_bottomNavigetionBar/navigator_bottomNavigetionBar9';
import 'package:power/pages/bottomNavigetionBar_tabBar_home2/navigator_bottomNavigetionBar/navigator_bottomNavigetionBar10';


class bottomNavigetionBar_home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
body: SafeArea(
  child:  GridView.count(
      primary: true,
      padding: const EdgeInsets.all(1.0),
      crossAxisCount: 2,
      childAspectRatio: 9/10,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: <Widget>[

        InkWell(
          child:MyGridView (image: "Icon-64 (1).png",teks: "输入电压"),
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_bottomNavigetionBar1(),),
            );
    },),

         InkWell(
          child: MyGridView (image: "Icon-64 (2).png",teks: "输入电容"),
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_bottomNavigetionBar2()),
            );
    },),

    InkWell(
          child: MyGridView (image: "Icon-64 (8).png",teks: "变压器"), 
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_bottomNavigetionBar3()),
            );
    },),
       InkWell(
          child:   MyGridView (image: "Icon-64 (9).png",teks: "稳压二极管"),
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_bottomNavigetionBar4()),
            );
    },),

     InkWell(
          child: MyGridView (image: "Icon-64 (5).png",teks: "原边侧二极管"),  
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_bottomNavigetionBar5()),
            );
    },),

     InkWell(
          child:MyGridView (image: "Icon-64 (3).png",teks: "mos管"), 
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_bottomNavigetionBar6()),
            );
    },),
    
         InkWell(
          child:MyGridView (image: "Icon-64 (5).png",teks: "副边侧二极管"), 
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_bottomNavigetionBar7()),
            );
    },),

         InkWell(
          child:MyGridView (image: "Icon-64 (2).png",teks: "输出电容"), 
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_bottomNavigetionBar8()),
            );
    },),
      
           InkWell(
          child:MyGridView(image: "Icon-64 (6).png",teks: "负载"), 
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_bottomNavigetionBar9()),
            );
    },),

          InkWell(
          child:MyGridView(image: "Icon-64 (6).png",teks: "关于APP"), 
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_bottomNavigetionBar10()),
            );
    },),

      ],
    ),
)
    );
  }
  }