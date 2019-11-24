import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes/civil.dart';
import 'package:notes/cse.dart';
import 'package:notes/ece.dart';
import 'package:notes/eee.dart';
import 'package:notes/it.dart';
import 'package:notes/mech.dart';
import 'package:notes/my_flutter_app_icons.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'Drawer.dart';
import 'app_state.dart';
import 'cse.dart';
import 'firebase_auth.dart';


void main(){
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(ChangeNotifierProvider<AppState>(
    builder: (context) => AppState(),
    child: MyHomePage(),
  ),
  );
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {

    double defaultScreenWidth = 400.0;
    double defaultScreenHeight = 810.0;

    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);

    return Container(
      child: Scaffold(
        key: scaffoldKey,
        drawer: MainDrawer(),
        //backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 15.0, left: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(MyFlutterApp.menu,size: ScreenUtil.instance.setSp(40.0),
                      //color: Colors.grey.shade700,
                    ),
                    onPressed: () => scaffoldKey.currentState.openDrawer(),
                  ),
                ],
              ),
            ),
            SizedBox(height: ScreenUtil.instance.setHeight(40.0),),
            Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "JNTUH" , style: TextStyle(
                        fontFamily: 'ProductSans',
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil.instance.setSp(60.0),
                    )
                    ),
                    TextSpan(text: "\n"),
                    TextSpan(text: "Notes" , style: TextStyle(
                        fontFamily: 'ProductSans',
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.normal,
                        fontSize: ScreenUtil.instance.setSp(30.0),
                    )
                    ),
                  ],
                ),
              ),
            ),
            SizedBox (height: ScreenUtil.instance.setHeight(100.0),),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
// CSE Button
                  RaisedButton(
                    onPressed: () {
                      //Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context) {return new Cse();}));
                      Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: Cse()));

                    },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    padding: const EdgeInsets.all(0.0),
                    child: Ink(
                      decoration:  BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.orange.shade200,Colors.deepOrange.shade400,
                            // Color(0xFFff9214),
                            //Color(0xFFffba7a),
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Container(
                        height: ScreenUtil.instance.setHeight(80.0),
                        width: ScreenUtil.instance.setWidth(160.0),
                        alignment: Alignment.center,
                        child:  Text(
                          'CSE',
                          textAlign: TextAlign.center, style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontWeight: FontWeight.bold,
                            fontSize:ScreenUtil.instance.setSp(30.0),
                            color: Colors.white.withOpacity(0.7)) ,
                        ),
                      ),
                    ),
                  ),
// IT Button
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context) {return new It();}));
                    },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    padding: const EdgeInsets.all(0.0),
                    child: Ink(
                      decoration:  BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.cyanAccent.shade100,Colors.blueAccent.shade400,
                            // Color(0xFFff9214),
                            //Color(0xFFffba7a),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Container(
                        height: ScreenUtil.instance.setHeight(80.0),
                        width: ScreenUtil.instance.setWidth(160.0),
                        alignment: Alignment.center,
                        child:  Text(
                          'IT',
                          textAlign: TextAlign.center, style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontWeight: FontWeight.bold,
                            fontSize:ScreenUtil.instance.setSp(30.0),
                            color: Colors.white.withOpacity(0.7)) ,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(

              padding: const EdgeInsets.only(top: 25.0),
              child: new ButtonTheme.bar(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
// ECE Button
                    RaisedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context) {return new Ece();}));
                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      padding: const EdgeInsets.all(0.0),
                      child: Ink(
                        decoration:  BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              // Colors.purpleAccent.shade100,Colors.deepPurple.shade400,
                              //Colors.purpleAccent.shade100,Colors.pinkAccent.shade400,
                              Color(0xFF7367F0),
                              Color(0xFFCE9FFC),
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Container(
                          height: ScreenUtil.instance.setHeight(80.0),
                          width: ScreenUtil.instance.setWidth(160.0),
                          alignment: Alignment.center,
                          child:  Text(
                            'ECE',
                            textAlign: TextAlign.center, style: TextStyle(
                              fontFamily: 'ProductSans',
                              fontWeight: FontWeight.bold,
                              fontSize:ScreenUtil.instance.setSp(30.0),
                              color: Colors.white.withOpacity(0.7)) ,
                          ),
                        ),
                      ),
                    ),
// EEE Button
                    RaisedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context) {return new Eee();}));
                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      padding: const EdgeInsets.all(0.0),
                      child: Ink(
                        decoration:  BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              // Colors.pink.shade200,Colors.pinkAccent.shade400,
                              Colors.deepPurple.shade300,
                              Colors.pinkAccent.shade100,
                              // Color(0xFFff9214),
                              //Color(0xFFffba7a),
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Container(
                          height: ScreenUtil.instance.setHeight(80.0),
                          width: ScreenUtil.instance.setWidth(160.0),
                          alignment: Alignment.center,
                          child:  Text(
                            'EEE',
                            textAlign: TextAlign.center, style: TextStyle(
                              fontFamily: 'ProductSans',
                              fontWeight: FontWeight.bold,
                              fontSize:ScreenUtil.instance.setSp(30.0),
                              color: Colors.white.withOpacity(0.7)) ,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.only(top: 25.0),
              child: new ButtonTheme.bar(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
// CIVIL Button
                    RaisedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context) {return new Civil();}));
                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      padding: const EdgeInsets.all(0.0),
                      child: Ink(
                        decoration:  BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              //Colors.greenAccent.shade200,Colors.lightGreen.shade400,
                              Color(0xFFFF859E),
                              Color(0xFFF73390),
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Container(
                          height: ScreenUtil.instance.setHeight(80.0),
                          width: ScreenUtil.instance.setWidth(160.0),
                          alignment: Alignment.center,
                          child:  Text(
                            'CIVIL',
                            textAlign: TextAlign.center, style: TextStyle(
                              fontFamily: 'ProductSans',
                              fontWeight: FontWeight.bold,
                              fontSize:ScreenUtil.instance.setHeight(30.0),
                              color: Colors.white.withOpacity(0.7)) ,
                          ),
                        ),
                      ),
                    ),
// MECH Button
                    RaisedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context) {return new Mech();}));
                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      padding: const EdgeInsets.all(0.0),
                      child: Ink(
                        decoration:  BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              //Colors.red.shade300,Colors.redAccent.shade400,
                              Color(0xFF7BE495),
                              Color(0xFF329D9C),
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Container(
                          height: ScreenUtil.instance.setHeight(80.0),
                          width: ScreenUtil.instance.setWidth(160.0),
                          alignment: Alignment.center,
                          child:  Text(
                            'MECH',
                            textAlign: TextAlign.center, style: TextStyle(
                              fontFamily: 'ProductSans',
                              fontWeight: FontWeight.bold,
                              fontSize:ScreenUtil.instance.setSp(30.0),
                              color: Colors.white.withOpacity(0.7)) ,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            /*Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  Text('Dark Mode', style: Theme.of(context).textTheme.body1,),
                  Spacer(),
                  Switch(
                    value: Provider.of<AppState>(context).isDarkModeOn,
                    onChanged: (booleanValue) {
                      Provider.of<AppState>(context).updateTheme(
                          booleanValue);
                    },
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20.0,right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RaisedButton(
                    onPressed: (){
                      AuthProvider().logOut();
                    },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    padding: const EdgeInsets.all(0.0),
                    child: Ink(
                      decoration:  BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            //Colors.red.shade300,Colors.redAccent.shade400,
                            Color(0xFF7BE495),
                            Color(0xFF329D9C),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      child: Container(
                        height: 50.0,
                        width: 160.0,
                        alignment: Alignment.center,
                        child:  Text(
                          'Log Out',
                          textAlign: TextAlign.center, style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white.withOpacity(0.7)) ,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),*/

          ],
        ),
      ),

    );
  }
}

