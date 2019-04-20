import 'package:flutter/material.dart';

class navigator_tabBar1_1 extends StatelessWidget {
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

  var L_uH=0.0,L_A=0.0; //LuH指代电感量，LA指代电感电流


  var U_IN_MAX_V=0.0,U_OUT_V=0.0,I_MAX_OUT_RL_A=0.0,F_switch_kHZ=0.0; 

  final TextEditingController t1 = TextEditingController(text: "12.0");
  final TextEditingController t2 = TextEditingController(text: "5.0");
  final TextEditingController t3 = TextEditingController(text: "2.0");
  final TextEditingController t4 = TextEditingController(text: "1.0");

/*
Buck_Boost_Inductor_Design_Steps指代升降压电感设计步骤
*/ 
void Buck_Boost_Inductor_Design_Steps() async{

  var Dutycycle=0.0,Cycle=0.0,tOFF=0.0,vXt_OFF=0.0,vXt=0.0;

  setState(() {

      U_IN_MAX_V = double.parse(t1.text);
      U_OUT_V = double.parse(t2.text);
      I_MAX_OUT_RL_A=double.parse(t3.text);
      F_switch_kHZ=double.parse(t4.text);

      Dutycycle=U_OUT_V / U_IN_MAX_V; //占空比

      Cycle=(1 / F_switch_kHZ); //周期

      tOFF=(1 - Dutycycle) * Cycle; //关断时间

      vXt_OFF=U_OUT_V * tOFF; //伏秒积（用关断时间计算）

      vXt=(vXt_OFF / (0.4)); 

      L_A=((1.2)*(I_MAX_OUT_RL_A));

      L_uH=vXt / I_MAX_OUT_RL_A;

    });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
         title: Center(child: Text("降压(电感)"),),
      ),
    

      body: SingleChildScrollView(

        padding: const EdgeInsets.all(30.0),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: '输入电压',
                suffixText: 'V',
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
                suffixText: 'A',
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
                labelText: '最大负载电流',
                suffixText: 'A',
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
                labelText: '开关频率',
                 suffixText: 'Khz',
                 border: OutlineInputBorder(),
              ),
              controller: t4,
            ),

               Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),

              Text(
              "电感量: ${L_uH.toStringAsFixed(2)}(微亨)",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),

             Text(
              "电感电流: ${L_A.toStringAsFixed(2)}(安培)",
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

             padding: EdgeInsets.symmetric(
               vertical: 20.0,horizontal: 160.0,),
               textTheme: ButtonTextTheme.primary,
               
              child:Text('计算',
              textAlign: TextAlign.center,
              ),
        
               onPressed: Buck_Boost_Inductor_Design_Steps,
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
