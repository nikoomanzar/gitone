import 'dart:async';

import 'package:arghenoon/main.dart';
import 'package:arghenoon/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class splashpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return splashpagestate();
    throw UnimplementedError();
  }

}
class splashpagestate extends State<splashpage>{

  startTime(){
    var _duration = new Duration(seconds: 6,microseconds: 9);
    return new Timer(_duration, (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> page2()));

    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child:Stack(
          fit: StackFit.expand,
          children: [new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height:450,width: 450,
                child: Image(image: AssetImage("assets/images/gif.gif"),),)
            ],
          ),

          ],
        ),
      ),
    );
    throw UnimplementedError();
  }

}