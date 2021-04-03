import 'package:flutter/material.dart';
import 'package:arghenoon/page2.dart';
import 'package:arghenoon/valet.dart';
double weight=0;
double ww=2304;
int cost=35000;
List result;

valet ne = new valet();

int rr=0;
int cc=0;
double wew=0;
int index=0;


class ricepage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ricepagestate();
    throw UnimplementedError();
  }

}
class ricepagestate extends State<ricepage>{





  @override
  Widget build(BuildContext context) {
    int c3=ne.costtrans();
    double w3=ne.wetrans();
    int i3=ne.indtran();
    var devicesize=MediaQuery.of(context).size;
    valet be = new valet();
    return Scaffold(
      body:  Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/ome.png"),fit: BoxFit.cover)),
        child: new Column(
          children: [
            Padding(padding: EdgeInsets.only(left: devicesize.width*0.02,top: devicesize.height*0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [FlatButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> page2()));
                }, child: Icon(Icons.arrow_back,color: Colors.white,))],
              ),),
            SizedBox(height: devicesize.height*0.039,),
            Padding(padding: EdgeInsets.only(left: devicesize.width*0.08),child: new Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 0),child:
                SizedBox(height: devicesize.height*0.06,child: Text("Price: \n 35000",style: TextStyle(color: Colors.white,fontFamily: 'Comic',fontSize: 19),)),)
                ,SizedBox(height: devicesize.height*0.31,width: 260,child: Image(image: AssetImage("assets/images/rice.png"),),
                )],
            ),),
            SizedBox(height: devicesize.height*0.10,),
            Row(children: [Padding(padding: EdgeInsets.only(left: devicesize.width*0.3),child: Container(width: 100,height: devicesize.height*0.041,decoration: BoxDecoration(image:
            DecorationImage(image: AssetImage("assets/images/ov.png"),fit: BoxFit.cover)),),)],),
            SizedBox(height: devicesize.height*0.079,),
            Padding(padding: EdgeInsets.only(left: devicesize.width*0.05),child:
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Container(
                  width: 68,
                  height:devicesize.height*0.08,
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(28)),
                  child: IconButton(icon: Icon(Icons.add,color: Colors.black,),onPressed: (){
                    setState(() {
                      if(index>=0){
                        cost=35000;
                        weight=2304;
                        int index2=index-1;
                        result=be.vvplus(index2,cost, weight);
                        rr=result[0];
                        cc=result[1];
                        wew=result[2];
                        ++index;
                      }
                    });
                  },)
              ),
                Padding(padding: EdgeInsets.only(left: devicesize.width*0.2),child: Container(width: 80,height: devicesize.height*0.039,decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/we.png"),fit:BoxFit.cover )),)),
                Padding(padding: EdgeInsets.only(left: devicesize.width*0.02),child: SizedBox(height: devicesize.height*0.04,child: Text("$w3 G",style: TextStyle(fontFamily: 'Comic',fontSize: 20),),),)],
            ),),
            SizedBox(height: devicesize.height*0.10,),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(padding: EdgeInsets.only(right: devicesize.width*0.04,bottom: devicesize.width*0.03),child:
                Container(width: 40,height: devicesize.height*0.04,decoration: BoxDecoration(image:
                DecorationImage(image: AssetImage("assets/images/tr.png"),fit: BoxFit.cover)),child: FlatButton(
                  onPressed: (){
                    setState(() {
                      if(index>0){
                        cost=35000;
                        weight=2304;
                        int index2=index-1;
                        result=be.vvneg(index2,cost, weight);
                        index=index-1;

                      }
                    });
                  },
                ),),)
              ],),
            Row(children: [
              GestureDetector(
                onTap:(){
                  setState(() {
                    valetsnackbar(context);
                  });
                },
                child: Container(
                  width: devicesize.width,
                  height: devicesize.height*0.071,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/cart.png"),fit: BoxFit.cover),borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: devicesize.width*0.06,bottom: 5),child: Container(width:91,height:70 ,decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/ca.png"),fit: BoxFit.cover)
                      ),)),
                      Padding(padding: EdgeInsets.only(left: devicesize.width*0.03,top: 16),child: Text("$i3 iteme", style: TextStyle(fontFamily: 'Comic',fontWeight: FontWeight.w800,fontSize: 13,color: Colors.white),),),
                      Padding(padding: EdgeInsets.only(left: devicesize.width*0.10),child: SizedBox(height: 34,width: 120,child: Text("$c3 " ,style: TextStyle(fontFamily: 'Comic',fontWeight: FontWeight.w800,fontSize: 28,color: Colors.white)),),),
                      Padding(padding:EdgeInsets.only(right: devicesize.width*0.04),child: Text("T" ,style: TextStyle(fontFamily: 'Comic',fontWeight: FontWeight.w800,fontSize: 28,color: Colors.white)),)
                    ],
                  ),
                ),
              )
            ],)

          ],
        ),
      ),

    );
    throw UnimplementedError();
  }

}