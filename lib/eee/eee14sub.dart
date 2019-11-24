import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../HomePage.dart';
import '../eee.dart';
import '../main.dart';
import '../my_flutter_app_icons.dart';


class Eee14sub extends StatefulWidget {
  @override
  _Eee14subState createState() => _Eee14subState();
}

class _Eee14subState extends State<Eee14sub> {

  final Shader linearGradient1 = LinearGradient(
    colors: <Color>[ Colors.deepPurple.shade300,Colors.pinkAccent.shade100,],
  ).createShader(new Rect.fromLTWH(0.0, 0.0, 750.0, 70.0));

  @override
  Widget build(BuildContext context) {

    double defaultScreenWidth = 400.0;
    double defaultScreenHeight = 810.0;

    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);

    return Scaffold(
      // backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 15.0, left: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(MyFlutterApp.back, size: ScreenUtil.instance.setSp(45.0),),
                  color: Colors.deepPurple.shade300,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context) {return new Eee();}));
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: ScreenUtil.instance.setHeight(30.0),),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "EEE" , style: TextStyle(
                      fontFamily: 'ProductSans',
                      foreground: new Paint()..shader = linearGradient1,
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil.instance.setSp(60.0),)

                  ),
                  TextSpan(text: "\n"),
                  TextSpan(text: "IV-Year  I-Semister" , style: TextStyle(
                      fontFamily: 'ProductSans',
                      //color: Colors.deepOrangeAccent.withOpacity(0.7),
                      foreground: new Paint()..shader = linearGradient1,
                      fontWeight: FontWeight.normal,
                      fontSize: ScreenUtil.instance.setSp(25.0),
                  )
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: ScreenUtil.instance.setHeight(40.0),),
          Padding(
            padding: EdgeInsets.only(left: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                    decoration:  BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.deepPurple.shade300,Colors.pinkAccent.shade100,                          // Color(0xFFff9214),
                          //Color(0xFFffba7a),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Container(
                      height: ScreenUtil.instance.setHeight(60.0),
                      width: ScreenUtil.instance.setWidth(300.0),
                      alignment: Alignment.center,
                      child:  Text(
                        'Information Security',
                        textAlign: TextAlign.center, style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: ScreenUtil.instance.setSp(20.0), color: Colors.white.withOpacity(0.7)) ,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: ScreenUtil.instance.setHeight(15.0),),
          Padding(
            padding: EdgeInsets.only(left: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {

                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                    decoration:  BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.deepPurple.shade300,Colors.pinkAccent.shade100,                          // Color(0xFFff9214),
                          //Color(0xFFffba7a),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Container(
                      height:ScreenUtil.instance.setHeight(60.0),
                      width: ScreenUtil.instance.setWidth(300.0),
                      alignment: Alignment.center,
                      child:  Text(
                        'Design Pattern',
                        textAlign: TextAlign.center, style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: ScreenUtil.instance.setSp(20.0), color: Colors.white.withOpacity(0.7)) ,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: ScreenUtil.instance.setHeight(15.0),),
          Padding(
            padding: EdgeInsets.only(left: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {

                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                    decoration:  BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.deepPurple.shade300,Colors.pinkAccent.shade100,                          // Color(0xFFff9214),
                          //Color(0xFFffba7a),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Container(
                      height: ScreenUtil.instance.setHeight(60.0),
                      width: ScreenUtil.instance.setWidth(300.0),
                      alignment: Alignment.center,
                      child:  Text(
                        'Mobile Application\n Development',
                        textAlign: TextAlign.center, style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: ScreenUtil.instance.setSp(20.0), color: Colors.white.withOpacity(0.7)) ,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: ScreenUtil.instance.setHeight(15.0),),
          Padding(
            padding: EdgeInsets.only(left: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {

                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                    decoration:  BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.deepPurple.shade300,Colors.pinkAccent.shade100,                          // Color(0xFFff9214),
                          //Color(0xFFffba7a),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Container(
                      height: ScreenUtil.instance.setHeight(60.0),
                      width: ScreenUtil.instance.setWidth(300.0),
                      alignment: Alignment.center,
                      child:  Text(
                        'Information Retrival\n Systems',
                        textAlign: TextAlign.center, style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: ScreenUtil.instance.setSp(20.0), color: Colors.white.withOpacity(0.7)) ,                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: ScreenUtil.instance.setHeight(15.0),),
          Padding(
            padding: EdgeInsets.only(left: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {

                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                    decoration:  BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.deepPurple.shade300,Colors.pinkAccent.shade100,                          // Color(0xFFff9214),
                          //Color(0xFFffba7a),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Container(
                      height: ScreenUtil.instance.setHeight(60.0),
                      width: ScreenUtil.instance.setWidth(300.0),
                      alignment: Alignment.center,
                      child:  Text(
                        'Wireless Networks\n& Mobile Computing',
                        textAlign: TextAlign.center, style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: ScreenUtil.instance.setSp(20.0), color: Colors.white.withOpacity(0.7)) ,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context) {return new MyHomePage();}));
        },
        tooltip: 'HOME',
        child: Icon(MyFlutterApp.home,color: Colors.deepPurple.shade300,size: ScreenUtil.instance.setSp(40.0),),

        backgroundColor: Colors.white,
      ),
    );
  }
}
