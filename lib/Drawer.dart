import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes/About.dart';
import 'package:notes/Developers.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:xlive_switch/xlive_switch.dart';
import 'app_state.dart';
import 'firebase_auth.dart';


final kFirebaseAuth = FirebaseAuth.instance;


class MainDrawer extends StatefulWidget {


  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  FirebaseUser _user;

  @override
  void initState(){
    super .initState();
    kFirebaseAuth.currentUser().then(
        (user) => setState(() => this._user = user),
    );
  }



  @override
  Widget build(BuildContext context) {

    double defaultScreenWidth = 400.0;
    double defaultScreenHeight = 810.0;

    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);

    return SafeArea(
      child: Drawer(
         child: Container(
           height: ScreenUtil.screenHeight,
           padding: EdgeInsets.only(top: ScreenUtil.instance.setWidth(20.0),left: ScreenUtil.instance.setWidth(10.0)),
          color: Theme.of(context).colorScheme.primary,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
                height: ScreenUtil.instance.setHeight(120.0),
                width: ScreenUtil.instance.setWidth(120.0),
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            "https://cdn.dribbble.com/users/2402074/screenshots/6760992/dribbble_shot_1-01_2x.jpg")
                    )
                )),
            ListView(
              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(10.0),right: ScreenUtil.instance.setWidth(10.0)),
              shrinkWrap: true,
              children: <Widget>[
               Text('Hi', style: TextStyle(
                 fontSize: ScreenUtil.instance.setSp(60.0),
                 fontFamily: 'ProductSans',
                 fontWeight: FontWeight.bold
                 ,
               ),
               ),
                Text('Welcome Back!', style: TextStyle(
                    fontSize: ScreenUtil.instance.setSp(30.0),
                    fontFamily: 'ProductSans',
                    fontWeight: FontWeight.normal,
                ),
                ),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 1,
              ),
                Container(
                  padding:  EdgeInsets.only(left: 0.0,right:ScreenUtil.instance.setWidth(20.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: (){
                          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: Developers()));
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
                            height: ScreenUtil.instance.setHeight(40.0),
                            width: ScreenUtil.instance.setWidth(180.0),
                            alignment: Alignment.center,
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(Icons.group,color:Colors.white.withOpacity(0.7) ,),
                                Text(
                                  'Developers',
                                  //textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'ProductSans',
                                      fontWeight: FontWeight.bold,
                                      fontSize: ScreenUtil.instance.setSp(15.0),
                                      color: Colors.white.withOpacity(0.7)) ,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding:  EdgeInsets.only(left: ScreenUtil.instance.setWidth(0.0),right:ScreenUtil.instance.setWidth(20.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: (){
                          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: About()));
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
                            height:ScreenUtil.instance.setHeight(40.0),
                            width: ScreenUtil.instance.setWidth(150.0),
                            alignment: Alignment.center,
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(Icons.person,color:Colors.white.withOpacity(0.7) ,),
                                Text(
                                  'About',
                                  //textAlign: TextAlign.center,
                                    style: TextStyle(
                                    fontFamily: 'ProductSans',
                                    fontWeight: FontWeight.bold,
                                    fontSize: ScreenUtil.instance.setSp(15.0),
                                    color: Colors.white.withOpacity(0.7)) ,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding:  EdgeInsets.only(left: ScreenUtil.instance.setWidth(0.0),right: ScreenUtil.instance.setWidth(20.0)),
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
                            height:ScreenUtil.instance.setHeight(40.0),
                            width: ScreenUtil.instance.setWidth(120.0),
                            alignment: Alignment.center,
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  'Log Out',
                                  textAlign: TextAlign.center, style: TextStyle(
                                    fontFamily: 'ProductSans',
                                    fontWeight: FontWeight.bold,
                                    fontSize: ScreenUtil.instance.setSp(15.0),
                                    color: Colors.white.withOpacity(0.7)),
                                ),
                                Icon(Icons.power_settings_new,color:Colors.white.withOpacity(0.7) ,),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                //SizedBox(height: ScreenUtil.instance.setHeight(280.0),),
                Padding(
                  padding: EdgeInsets.only(top:ScreenUtil.instance.setWidth(260.0)),
                  child: Row(
                    children: <Widget>[
                      Text('Dark Mode', style: TextStyle(
                        fontFamily: 'ProductSans',
                        fontWeight: FontWeight.normal,
                        fontSize: ScreenUtil.instance.setSp(20.0),
                      )),
                      Spacer(flex: 2,),
                      XlivSwitch(
                        value: Provider.of<AppState>(context).isDarkModeOn,
                        onChanged: (booleanValue) {
                          Provider.of<AppState>(context).updateTheme(
                              booleanValue);
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
       ),
      ),
    );
  }
}
