import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes/my_flutter_app_icons.dart';

import 'HomePage.dart';
import 'main.dart';
import 'mech/mech11sub.dart';
import 'mech/mech12sub.dart';
import 'mech/mech13sub.dart';
import 'mech/mech14sub.dart';

class Mech extends StatefulWidget {
  @override
  _MechState createState() => _MechState();
}

class _MechState extends State<Mech> {
  @override
  Widget build(BuildContext context) {

    double defaultScreenWidth = 400.0;
    double defaultScreenHeight = 810.0;

    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);

    final Shader linearGradient1 = LinearGradient(
      colors: <Color>[ Color(0xFF329D9C), Color(0xFF7BE495),],
    ).createShader(new Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

    return Scaffold(
     // backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          SizedBox(height: ScreenUtil.instance.setHeight(60.0),),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "MECH" , style: TextStyle(
                      fontFamily: 'ProductSans',
                      foreground: new Paint()..shader = linearGradient1,
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil.instance.setSp(60.0),)

                  ),
                  TextSpan(text: "\n"),
                  TextSpan(text: "Mechanical Engineering" , style: TextStyle(
                      fontFamily: 'ProductSans',
                      //color: Colors.deepOrangeAccent.withOpacity(0.7),
                      foreground: new Paint()..shader = linearGradient1,
                      fontWeight: FontWeight.normal,
                      fontSize: ScreenUtil.instance.setSp(16.0),
                  )
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: ScreenUtil.instance.setHeight(40.0),),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Padding(
              padding: const EdgeInsets.only(left:40.0,bottom: 20),
              child: Row(
                children: <Widget>[
                  Text('Regulation 16', style: TextStyle(
                      fontFamily: 'ProductSans',
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil.instance.setSp(30.0)
                  ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: ScreenUtil.instance.setHeight(10.0),),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('IV Year',  style: TextStyle(
                    fontFamily: 'ProductSans',
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil.instance.setSp(25.0)
                ),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context) {return new Mech14sub();}));
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                    decoration:  BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF329D9C), Color(0xFF7BE495),
                          // Color(0xFFff9214),
                          //Color(0xFFffba7a),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Container(
                      height: ScreenUtil.instance.setHeight(40.0),
                      width: ScreenUtil.instance.setWidth(160.0),
                      alignment: Alignment.center,
                      child:  Text(
                        'I-Semister',
                        textAlign: TextAlign.center, style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: ScreenUtil.instance.setSp(25.0),color: Colors.white.withOpacity(0.7)) ,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: ScreenUtil.instance.setHeight(10.0),),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('III Year', style:
                TextStyle(
                    fontFamily: 'ProductSans',
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil.instance.setSp(25.0)
                ),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context) {return new Mech13sub();}));
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                    decoration:  BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF329D9C), Color(0xFF7BE495),
                          // Color(0xFFff9214),
                          //Color(0xFFffba7a),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Container(
                      height: ScreenUtil.instance.setHeight(40.0),
                      width: ScreenUtil.instance.setWidth(160.0),
                      alignment: Alignment.center,
                      child:  Text(
                        'I-Semister',
                        textAlign: TextAlign.center, style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: ScreenUtil.instance.setSp(25.0), color: Colors.white.withOpacity(0.7)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: ScreenUtil.instance.setHeight(40.0),),
          Padding(
            padding: EdgeInsets.only(top: 5.0),
            child: Padding(
              padding: const EdgeInsets.only(left:40.0,bottom: 20),
              child: Row(
                children: <Widget>[
                  Text('Regulation 18', style: TextStyle(
                      fontFamily: 'ProductSans',
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil.instance.setSp(30.0)
                  ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: ScreenUtil.instance.setHeight(10.0),),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('II Year',  style: TextStyle(
                    fontFamily: 'ProductSans',
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil.instance.setSp(25.0)
                ),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context) {return new Mech12sub();}));
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                    decoration:  BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF329D9C), Color(0xFF7BE495),
                          // Color(0xFFff9214),
                          //Color(0xFFffba7a),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Container(
                      height: ScreenUtil.instance.setHeight(40.0),
                      width: ScreenUtil.instance.setWidth(160.0),
                      alignment: Alignment.center,
                      child:  Text(
                        'I-Semister',
                        textAlign: TextAlign.center, style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: ScreenUtil.instance.setSp(25.0), color: Colors.white.withOpacity(0.7)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: ScreenUtil.instance.setHeight(10.0),),
          Padding(
            padding: EdgeInsets.only(left:15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('I Year',  style: TextStyle(
                    fontFamily: 'ProductSans',
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil.instance.setSp(25.0)
                ),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context) {return new Mech11sub();}));
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                    decoration:  BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF329D9C), Color(0xFF7BE495),
                          // Color(0xFFff9214),
                          //Color(0xFFffba7a),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Container(
                      height: ScreenUtil.instance.setHeight(40.0),
                      width: ScreenUtil.instance.setWidth(160.0),
                      alignment: Alignment.center,
                      child:  Text(
                        'I-Semister',
                        textAlign: TextAlign.center, style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: ScreenUtil.instance.setSp(25.0), color: Colors.white.withOpacity(0.7)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context) {return new MyHomePage();}));
        },
        tooltip: 'HOME',
        child: Icon(MyFlutterApp.home, color: Color(0xFF329D9C),size:ScreenUtil.instance.setSp(40.0),),

        backgroundColor: Colors.white,
      ),
    );
  }
}
