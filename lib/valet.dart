import 'package:flutter/material.dart';
import 'package:flash/flash.dart';
double valetweight=0;
int valetcost=0;
int valetindex=0;
double ww=0;
class valet{
  List vvplus(int index,int cost,double weight){
    valetweight=valetweight+weight;
    ww=valetweight/1000;
    valetcost=valetcost+cost;
    valetindex=valetindex+index;
    return[valetindex,valetcost,ww];
  }
  List vvneg(int index,int cost,double weight){
    valetweight=valetweight-weight;
    ww=valetweight/1000;
    valetcost=valetcost-cost;
    valetindex=valetindex-index;
    return[valetindex,valetcost,ww];
  }
  int costtrans(){
    return valetcost;
  }
  double wetrans(){
    return ww;
  }
  int indtran(){
    return valetindex;
  }
}
valetsnackbar(BuildContext context){

  showFlash(context: context,
      duration: const Duration(seconds:7),
      builder: (context, controller){
        return
          Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.018,right: MediaQuery.of(context).size.width*0.018,bottom: MediaQuery.of(context).size.width*0.018),
            child: Flash.dialog(controller: controller, borderRadius: const BorderRadius.all(Radius.circular(21)),backgroundColor: Colors.white, alignment: Alignment.bottomCenter,
              margin:  const EdgeInsets.only(bottom: 0),
              child: new Row(
                children: [SizedBox(width: MediaQuery.of(context).size.width*0.6,height: 300,child: Image.asset("assets/images/shop.gif"),),
                SizedBox(height: 300,width: 120,
                child: Padding(padding: EdgeInsets.only(bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FlatButton(onPressed: null, child: Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(color: Colors.blueAccent,borderRadius: BorderRadius.circular(30),),
                      child: Center(child: Text("Show Cart",style: TextStyle(color: Colors.white),)),
                    )),
                  ],
                ),),)],
              ),),
          );
      });
}