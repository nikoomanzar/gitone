import 'package:arghenoon/splash.dart';
import 'package:flutter/material.dart';
import 'package:arghenoon/page2.dart';
void main(){
  runApp(new MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/splash",
      routes: {
        "/splash" : (context) => new splashpage(),
      },
      debugShowCheckedModeBanner: false,
      title: "Arganoon Shopping",
      home: new homepage(),

    );
    throw UnimplementedError();
  }

}
class homepage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return bodyhomepage();
    throw UnimplementedError();
  }

}
class bodyhomepage extends State<homepage>{

  @override
  Widget build(BuildContext context) {
    var devicesize=MediaQuery.of(context).size;
    return Scaffold(
      body:
        Container(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/home.png"),fit: BoxFit.cover)),
            child: new Column(
              children: [
                Padding(padding: EdgeInsets.only(top: devicesize.height*0.07,left: devicesize.width*0.10),child: new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: devicesize.height*0.08,child: Text("Arghanoon",style: TextStyle(fontFamily: 'ALBAS' , fontSize: 40,color: Colors.white,decoration: TextDecoration.none),),)
                  ],
                ),),
                SizedBox(height: (devicesize.height*0.27),),
                Padding(padding: EdgeInsets.only(left: (devicesize.width*0.04)),child: new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [SizedBox(height: devicesize.height*0.30,child: Image(image: AssetImage("assets/images/bb.png")),)],
                ),),
                SizedBox(height: (devicesize.height*0.16),),
                Padding(padding: EdgeInsets.only(right: (devicesize.width*0.01)),child:
                new Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    FlatButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> page2()));
                    }, child: Container(
                        width: devicesize.width*0.32,
                        height: devicesize.height*0.052,
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(35)),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            new Center(child:Padding(padding: EdgeInsets.only(left: (devicesize.width*0.05),bottom: (devicesize.height*0.01)),child:  Text("Explore",style: TextStyle(fontFamily: 'comic',fontSize: 17,color: Colors.deepPurple,fontWeight: FontWeight.bold),),),),
                            Padding(padding: EdgeInsets.only(right: (devicesize.width*0.04)),child: Image(image: AssetImage("assets/images/Po.png")
                            ),)
                          ],
                        )
                    ),)
                  ],
                ),
                ),
              ],
            )
        ),
    );
    throw UnimplementedError();
  }

}