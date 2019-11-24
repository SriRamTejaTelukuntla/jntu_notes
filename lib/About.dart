import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'my_flutter_app_icons.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {

  final Shader linearGradient1 = LinearGradient(
  colors: <Color>[Colors.blueAccent.shade400,Colors.cyanAccent.shade100,],
  ).createShader(new Rect.fromLTWH(0.0, 0.0, 400.0, 70.0));


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 15.0, left: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(MyFlutterApp.back,size: 45,),
                  color: Colors.blueAccent,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context) {return new MyHomePage();}));
                  },
                ),
              ],
            ),
          ),
             SizedBox(height: 10.0,),
             Padding(
               padding: EdgeInsets.only(top: 15.0,left: 40.0),
               child:Text(
                 "Developers",
                 style: TextStyle(
                   fontSize: 40,
                   fontFamily: 'ProductSans',
                   fontWeight: FontWeight.bold,
                 ),
               ) ,
             ),
             SizedBox(height: 10.0,),
             Padding(
               padding: EdgeInsets.only(top: 10.0,left: 0.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: <Widget>[
                   Row(
                     children: <Widget>[
                       ButtonTheme(
                         minWidth: ScreenUtil.instance.setWidth(170.0),
                         height: ScreenUtil.instance.setHeight(90.0),
                         child: RaisedButton(
                           // elevation: 10,
                           //shape: CircleBorder(),
                           textColor: Colors.black87,
                           color: Colors.white,
                           child: Row(
                             mainAxisSize: MainAxisSize.min,
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: <Widget>[
                               Container(
                                 margin: EdgeInsets.only(right:0.0),
                                 child: CircleAvatar(
                                   backgroundColor: Colors.white,
                                   radius: 25.0,
                                   backgroundImage: AssetImage("assets/dp.jpg"),
                                 ),
                               ),
                               SizedBox(width: 10.0,),
                               Text(
                                 "Sri Ram Teja",
                                 style: TextStyle(
                                   fontSize: 15.0,
                                   fontFamily: 'ProductSans',
                                   fontWeight: FontWeight.bold,
                                 ),
                               ),
                             ],
                           ),
                           onPressed: () => _onButtonPressed1(),
                           shape: new RoundedRectangleBorder(
                             borderRadius: new BorderRadius.circular(10.0),
                           ),

                         ),
                       ),

                     ],
                   ),
                   Row(
                     children: <Widget>[
                       ButtonTheme(
                         minWidth: ScreenUtil.instance.setHeight(170.0),
                         height: ScreenUtil.instance.setHeight(90.0),
                         child: RaisedButton(
                           // elevation: 10,
                           //shape: CircleBorder(),
                           textColor: Colors.black87,
                           color: Colors.white,
                           child: Row(
                             mainAxisSize: MainAxisSize.min,
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: <Widget>[
                               Container(
                                 margin: EdgeInsets.only(right:0.0),
                                 child: CircleAvatar(
                                   backgroundColor: Colors.white,
                                   radius: 25.0,
                                   backgroundImage: AssetImage("assets/dp.jpg"),
                                 ),
                               ),
                               SizedBox(width: 10.0,),
                               Text(
                                 "Sri Ram Teja",
                                 style: TextStyle(
                                   fontSize: 15.0,
                                   fontFamily: 'ProductSans',
                                   fontWeight: FontWeight.bold,
                                 ),
                               ),
                             ],
                           ),
                           onPressed: () => _onButtonPressed1(),
                           shape: new RoundedRectangleBorder(
                             borderRadius: new BorderRadius.circular(10.0),
                           ),

                         ),
                       ),

                     ],
                   ),
                  ],
               ),
             ),

        ],
      ),
    );
  }
  void _onButtonPressed1() {
    showModalBottomSheet(context: context, builder: (context) {
      return Container(
        color: Theme.of(context).cardTheme.color,
        //color: Color(0xff737373),
        height: 300,
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          ),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                header(),
                Padding(
                  padding: EdgeInsets.only(top: 5.0,bottom: 25.0,left:15.0,right:15.0),
                  child: Text(
                    '',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ProductSans',
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        height: 1,
                        color: Theme.of(context).cardTheme.color,
                       // color: Colors.black12,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: Text(
                          "Social Links",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'ProductSans',
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        height: 1,
                        color: Theme.of(context).cardTheme.color,
                        //color: Colors.black12,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                  child: Column(
                    children: <Widget>[
                      Wrap(
                        spacing: 0.0,
                        // gap between adjacent chips
                        runSpacing: 10.0,
                        // ga
                        runAlignment: WrapAlignment.center,
                        // p be
                        alignment: WrapAlignment.center,

                        /// tween lines
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                            child: RaisedButton(
                              textColor: Colors.black87,
                              color: Colors.white,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 10.0),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 14.0,
                                      backgroundImage: AssetImage('assets/instagram.png'),
                                    ),
                                  ),
                                  Text(
                                    'Instagram',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontFamily: 'ProductSans',
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () => Utils.launchURL("https://instagram.com/sriramteja_srt"),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                            child: RaisedButton(
                              textColor: Colors.black87,
                              color: Colors.white,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 10.0),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 14.0,
                                      backgroundImage: AssetImage('assets/twitter.png'),
                                    ),
                                  ),
                                  Text(
                                    'Twitter',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontFamily: 'ProductSans',
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () => Utils.launchURL("https://twitter.com/sriramtejasrt"),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                            child: RaisedButton(
                              textColor: Colors.black87,
                              color: Colors.white,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 10.0),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 14.0,
                                      backgroundImage: AssetImage('assets/linkedin.png'),
                                    ),
                                  ),
                                  Text(
                                    'LinkedIn',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontFamily: 'ProductSans',
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () => Utils.launchURL("https://twitter.com/sriramtejasrt"),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  /*Widget socialMediaLinks(String label, String imagePath, String url) =>
      RaisedButton(
        textColor: Colors.black87,
        color: Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 14.0,
                backgroundImage: AssetImage(imagePath),
              ),
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontFamily: 'ProductSans',
              ),
            ),
          ],
        ),
        onPressed: () => Utils.launchURL(url),
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
        ),
      );*/
}


class Utils {
  /*
   * Method to handle launching of URL
   */
  static launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

Widget header() => Ink(
  child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            CircleAvatar(
              radius: 25.0,
              backgroundImage: AssetImage("assets/dp.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.only(left: 12),
                child: Text(
                  'Sri Ram Teja',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    fontFamily: 'ProductSans',
                ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
);