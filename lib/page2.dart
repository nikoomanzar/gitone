import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:arghenoon/saffaronpage.dart';
import 'package:arghenoon/risepage.dart';
import 'package:arghenoon/valet.dart';
List name =[ "assets/images/L1.png","assets/images/L2.png"];
List pic =["assets/images/P1.png","assets/images/P2.png"];
List result;
class page2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return page2state();
    throw UnimplementedError();
  }

}
class page2state extends State<page2> with SingleTickerProviderStateMixin{
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController= new TabController(length: 2, vsync: this);


  }
  @override
  Widget build(BuildContext context) {
    var devicesize=MediaQuery.of(context).size;
    valet be = new valet();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(//image: DecorationImage(image: AssetImage("assets/images/home2.png"),
          // fit: BoxFit.cover)
          color: Colors.white),
        child: new Column(
          children: [
            Padding(padding: EdgeInsets.only(left: (devicesize.width*0.08),top: (devicesize.height*0.07)),child:
              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                SizedBox(height: devicesize.height*0.05,
                child: Text(
                  'arghanoon',
                  style: TextStyle(
                    fontFamily: 'harabara',
                    fontSize: 28,
                    color: const Color(0xff0035ff),
                    shadows: [
                      Shadow(
                        color: const Color(0x29000000),
                        offset: Offset(0, 5),
                        blurRadius: 6,
                      )
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),)
                ],
              ),),
            SizedBox(height: (devicesize.height*0.02),),
            Padding(padding: EdgeInsets.only(left: (devicesize.width*0.08)),child:
              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: devicesize.height*0.046,
                  child:  Text(
                    'People who love to eat are always the\nbest people . . . ',
                    style: TextStyle(
                      fontFamily: 'HKGrotesk',
                      fontSize: 16,
                      color: const Color(0xff000000),
                    ),
                    textAlign: TextAlign.left,
                  ),)
                ],
              ),),
            Container(
              height: devicesize.height*0.05,
              margin: EdgeInsets.only(left: 19.4,top: devicesize.height*0.05),
              child: DefaultTabController(
                length: 2,
                child: TabBar(
                  labelPadding: EdgeInsets.only(left: 29.4 , right: 29.4),
                  indicatorPadding: EdgeInsets.only(left: 29.4 , right: 29.4),
                  isScrollable: true,
                  labelColor: Color(0xffff8800),
                  unselectedLabelColor: Color(0xffaaa9a8),
                  labelStyle: TextStyle(fontFamily: 'Arnold',fontSize: 18,fontWeight: FontWeight.w900),
                  unselectedLabelStyle: TextStyle(fontFamily: 'Arnold',fontSize: 14,fontWeight: FontWeight.w900) ,
                  indicatorColor: Color(0xffff8800),
                  tabs: [
                    Tab(child: Text("PRODUCTS"),),
                    Tab(child: Text("CART"),),
                  ],
                ),
              ),
            ),
            SizedBox(height: devicesize.height*0.03,),
            Container(
              height: devicesize.height*0.57,
              width: devicesize.width,
              child: ListView.builder(scrollDirection: Axis.horizontal,padding: EdgeInsets.only(left: (0),right: (devicesize.width*0.03)),
                  itemCount: 2,itemBuilder: (context, index){
                return GestureDetector(
                  onTap: (){
                    if (index==0){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> saffronpage()));
                      });
                    }else if(index==1){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ricepage()));
                      });
                    }
                  },
                  child: Container(
                      margin: EdgeInsets.only(right:0),
                      height: devicesize.height*0.48,
                      width: devicesize.width*0.73,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(name[index]),fit: BoxFit.cover),borderRadius: BorderRadius.circular(72)),
                      child: Container(
                        height: devicesize.height*0.48,
                        width: devicesize.width*0.73,
                        child: new Column(
                          children: [
                          ],
                        ),
                      )
                  ),
                );
              }),
            ),


          ],
        ),
      )
    );
    throw UnimplementedError();
  }

}