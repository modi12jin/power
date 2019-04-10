import 'package:flutter/material.dart';

class navigator_tabBar2_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         theme: ThemeData(
        brightness:Brightness.dark,
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF212121),
        accentColor: const Color(0xFF64ffda),
        canvasColor: const Color(0xFF303030),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

var Reverse_V=0.0,Rated_A=0.0,Rated_V=0.0;

var OUT_A=0.0,OUT_V=0.0,IN_V=0.0,MOS_V_Decline=0.0; //输出电流，输出电压，输入电压，管压降

  final TextEditingController t1 = TextEditingController(text: "2.0");
  final TextEditingController t2 = TextEditingController(text: "5.0");
  final TextEditingController t3 = TextEditingController(text: "12.0");
  final TextEditingController t4 = TextEditingController(text: "0.5");

/*
Buck_Boost_diode_Design_Steps指代升降压二极管设计步骤
*/ 

void Buck_Boost_diode_Design_Steps() async{

  setState(() {
      OUT_A = double.parse(t1.text);
      OUT_V = double.parse(t2.text);
      IN_V=double.parse(t3.text);
      MOS_V_Decline=double.parse(t4.text);

      Rated_A=2 * OUT_A; //额定电流

      Rated_V=(1.2) * (OUT_V + IN_V )+ MOS_V_Decline; //额定电压

      Reverse_V=(1.414) * Rated_V; //反向耐压

  });

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Center(child: Text("升降压(二极管)"),), 
      ),
    

      body: SingleChildScrollView(

        padding: const EdgeInsets.all(30.0),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: '输出电流',
                suffixText: 'A',
                border: OutlineInputBorder(),
              ),
              controller: t1,
            ),

              Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),

            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: '输出电压',
                suffixText: 'V',
                border: OutlineInputBorder(),
                ),
              controller: t2,
            ),

             Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),

            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: '输入电压',
                suffixText: 'V',
                border: OutlineInputBorder(),
              ), 
              controller: t3,
            ),

               Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),

            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: '管压降',
                suffixText: 'V',
                border: OutlineInputBorder(),
              ), 
              controller: t4,
            ),

               Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),

            Text(
              "反向耐压: $Reverse_V(V)",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            
             Text(
              "额定电流: $Rated_A(A)",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple
                  ),
            ),
            
                         Text(
              "额定电压: $Rated_V(V)",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple
                  ),
            ),

                Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),

            RaisedButton(
              color:  Color(0xFF212121),
             padding: const EdgeInsets.symmetric(
               vertical: 20.0,horizontal: 160.0,),
               textTheme: ButtonTextTheme.primary,
               child:Text('计算',
              textAlign: TextAlign.center,
              ), 
               onPressed: Buck_Boost_diode_Design_Steps,
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
               ),
            ),

          ],

        ),
      ),
    );
  }
}
