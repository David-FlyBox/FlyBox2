import 'dart:html';

import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home: Page1(),
  ));
}

class Page1 extends StatelessWidget
{
  @override 
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text('FlyBox')),
      body: Center(child: ElevatedButton(
        onPressed: ()
        {
          Navigator.of(context)
            .push
              (
                MaterialPageRoute(builder: (context) => Page2())
              );
        },
        child: Text('Package info'),
     )),
    );
  }
}


class Page2 extends StatelessWidget 
{

  @override 
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text('Package info')),
      body: Center(child: ElevatedButton(
        onPressed: ()
        {
          Navigator.of(context)
            .pop();
        },
        child: Text('Return To Home Page'),
      )),
    );
  }
}