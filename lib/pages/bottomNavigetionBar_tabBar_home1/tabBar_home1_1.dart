import 'package:flutter/material.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home1/navigator_tabBar1/navigator_tabBar1_1.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home1/navigator_tabBar1/navigator_tabBar1_2.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home1/navigator_tabBar1/navigator_tabBar1_3.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home1/navigator_tabBar1/navigator_tabBar1_4.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home1/navigator_tabBar1/navigator_tabBar1_5.dart';
import 'package:power/pages/bottomNavigetionBar_tabBar_home1/navigator_tabBar1/navigator_tabBar1_6.dart';

class tabBar_home1_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
body: Container(
  color: Color(0xFF212121),
  child:  GridView.count(
      primary: true,
      padding: const EdgeInsets.all(1.0),
      crossAxisCount: 2,
      childAspectRatio: 9/10,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: <Widget>[

        InkWell(
          child:MyGridView (image: "Icon-64 (4).png",teks: "电感"),
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_tabBar1_1(),),
            );
    },),

         InkWell(
          child: MyGridView (image: "Icon-64 (3).png",teks: "MOS管"),
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_tabBar1_2()),
            );
    },),

    InkWell(
          child: MyGridView (image: "Icon-64 (5).png",teks: "二极管"), 
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_tabBar1_3()),
            );
    },),
       InkWell(
          child:   MyGridView (image: "Icon-64 (2).png",teks: "输入电容"),
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_tabBar1_4()),
            );
    },),

     InkWell(
          child: MyGridView (image: "Icon-64 (2).png",teks: "输出电容"),  
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_tabBar1_5()),
            );
    },),
     InkWell(
          child:MyGridView (image: "Icon-64 (6).png",teks: "负载"), 
    onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigator_tabBar1_6()),
            );
    },),
    
   
      ],
    ),
)
    );
  }
}

class MyGridView  extends StatelessWidget{
  MyGridView ({this.image,this.teks});

  final String  image;
  final String teks;

  @override
  Widget build(BuildContext context){
    return Container(
       child:InkWell(
         child: Card(
  elevation: 1.5,

    child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    mainAxisSize: MainAxisSize.min,
    verticalDirection: VerticalDirection.down,
    children: <Widget>[
      Image(image: AssetImage('lib/images/' + image)),
      Center(
        child:Text(teks),
      ), 
    ],
  ),
),
   ),
    );
  }
}