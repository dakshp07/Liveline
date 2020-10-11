import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PWDetail extends StatefulWidget {
  @override
  _PWDetailState createState() => _PWDetailState();
}

class _PWDetailState extends State<PWDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: new BottomAppBar(
        color: Colors.black,
        child: new SizedBox(
          height: 75,
          child: new Container(
            padding: const EdgeInsets.all(5),
            child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              new Column(
                children: [
                  new GestureDetector(
                    child: new Icon(Icons.home_outlined,size: 25,color: Colors.grey[800],),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  new Text("Home",style: TextStyle(fontSize: 15,color: Colors.grey[800],fontFamily: "Maven Pro"))
                ],
              ),
              new Column(
                children: [
                  new Icon(Icons.notifications_outlined,size: 25,color: Colors.grey[800],),
                  new Text("Notifications",style: TextStyle(fontSize: 15,color: Colors.grey[800],fontFamily: "Maven Pro"))
                ],
              ),
              new Column(
                children: [
                  new Icon(Icons.alarm,size: 25,color: Colors.grey[800],),
                  new Text("History",style: TextStyle(fontSize: 15,color: Colors.grey[800],fontFamily: "Maven Pro"))
                ],
              ),
            ],
          ),
          ),
        ),
      ),
      body: new Container(
        padding: const EdgeInsets.only(top : 65),
        child: new Column(
          children: [
            new Row(
              children: [
                new Row(
                  children: [
                    new Padding(padding: const EdgeInsets.symmetric(horizontal: 5),),
                    new IconButton(icon: new Icon(Icons.arrow_back_ios,size: 30,color: Colors.white),onPressed: (){
                      Navigator.pop(context);
                    }),
                    new Padding(padding: const EdgeInsets.symmetric(horizontal: 5)),
                    new Text("Pulse Wave Velocity (PWV)",style: TextStyle(fontSize: 25,color:Colors.white,fontWeight: FontWeight.w700,fontFamily: "Maven Pro")),
                  ],
                ),
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top : 65)),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                new Text("",style: TextStyle(fontSize: 25,color: Colors.white,fontFamily: "Movan Pro")),
              ],
            ),
              new Padding(padding: const EdgeInsets.only(top:4),),
              new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                new Text("6.88",style: TextStyle(fontSize: 70,color: Colors.white,fontWeight: FontWeight.w600,fontFamily: "Movan Pro")),
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 2)),
            new Text("Normal",style: TextStyle(fontSize: 45,color: Colors.green[800],fontFamily: "Movan Pro",fontWeight: FontWeight.w700),),
           new Padding(padding: const EdgeInsets.all(45),),
           new Row(
             children: [
              new Padding(padding: const EdgeInsets.symmetric(horizontal: 5),),
              new Column(
                children: [
                  new Padding(padding: const EdgeInsets.only(top: 10)),
                  new Row(
                    children: [
                      new Text("",style: TextStyle(fontSize: 25,color: Colors.white,fontFamily: "Movan Pro",fontWeight: FontWeight.w700),),
                    ],
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 10)),
                  new Text("Normal",style: TextStyle(fontSize: 15,color: Colors.white,fontFamily: "Movan Pro",fontWeight: FontWeight.w700),),
                  new Padding(padding: const EdgeInsets.only(top: 10)),
                  new Text("Left Ventricle,Ejection Insufficient",style: TextStyle(fontSize: 15,color: Colors.white,fontFamily: "Movan Pro",fontWeight: FontWeight.w700),),
                  new Padding(padding: const EdgeInsets.only(top: 10)),
                  new Text("Right Ventricle,Ejection Surplus",style: TextStyle(fontSize: 15,color: Colors.white,fontFamily: "Movan Pro",fontWeight: FontWeight.w700),),
                ],
              ),
              new Padding(padding: const EdgeInsets.symmetric(horizontal: 30),),
              new Column(
                children: [
                  new Text("",style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: "Movan Pro",fontWeight: FontWeight.w700),),
                  new Padding(padding: const EdgeInsets.only(top: 15)),
                  new Text("5.19-8.4",style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: "Movan Pro",fontWeight: FontWeight.w700),),
                  new Padding(padding: const EdgeInsets.only(top: 15)),
                  new Text("<5.19",style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: "Movan Pro",fontWeight: FontWeight.w700),),
                  new Padding(padding: const EdgeInsets.only(top: 15)),
                  new Text(">8.49",style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: "Movan Pro",fontWeight: FontWeight.w700),),
                ],
              ),
              new Padding(padding: const EdgeInsets.symmetric(horizontal: 10),),
            ],
           ),
          ],
        ),
        new Padding(padding: const EdgeInsets.only(top: 10),),
        new RaisedButton(
          color: Colors.white,
          shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
          child:new Text("Go To Details",style: TextStyle(fontSize: 20,color: Colors.black,fontFamily: "Movan Pro",fontWeight: FontWeight.w700),),
          onPressed: (){
            launch("https://www.mayoclinic.org/diseases-conditions/arteriosclerosis-atherosclerosis/symptoms-causes/syc-20350569#:~:text=Atherosclerosis%20refers%20to%20the%20buildup,arteries%20anywhere%20in%20your%20body.");
          }
          )
          ],
        )
        ),
      );
  }
}