import 'package:flutter/material.dart';
class navigator_tabBar1_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("新页面1"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigato1()),
            );
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class navigato1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("新页面1"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

