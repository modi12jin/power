import 'package:flutter/material.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home1/tabBar_home1_1.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home3/navigator_tabBar3_1/navigator_tabBar3_1_1';

class tabBar_home3_5 extends StatelessWidget {
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
              MaterialPageRoute(builder: (context) => navigator_tabBar3_1_1(),),
            );
    },),

               InkWell(
          child:MyGridView (image: "Icon-64 (4).png",teks: "电感"),
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_tabBar3_1_1(),),
            );
    },),

               InkWell(
          child:MyGridView (image: "Icon-64 (4).png",teks: "电感"),
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_tabBar3_1_1(),),
            );
    },),

               InkWell(
          child:MyGridView (image: "Icon-64 (4).png",teks: "电感"),
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_tabBar3_1_1(),),
            );
    },),

               InkWell(
          child:MyGridView (image: "Icon-64 (4).png",teks: "电感"),
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_tabBar3_1_1(),),
            );
    },),

               InkWell(
          child:MyGridView (image: "Icon-64 (4).png",teks: "电感"),
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_tabBar3_1_1(),),
            );
    },),
    
      ],
    ),
)
    );
  }
}