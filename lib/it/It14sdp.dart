import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../HomePage.dart';
import '../my_flutter_app_icons.dart';
import 'it14sub.dart';

class It14sdp extends StatefulWidget {


  @override
  _It14sdpState createState() => _It14sdpState();
}

class _It14sdpState extends State<It14sdp> {



  final Shader linearGradient1 = LinearGradient(
    colors: <Color>[Colors.blueAccent.shade400,Colors.cyanAccent.shade100,],
  ).createShader(new Rect.fromLTWH(0.0, 0.0, 400.0, 70.0));

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
      //backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 15.0, left: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(MyFlutterApp.back,size: ScreenUtil.instance.setSp(45.0),),
                  color: Colors.blueAccent,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context) {return new It14sub();}));
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
                  TextSpan(text: "IT" , style: TextStyle(
                    fontFamily: 'ProductSans',
                    foreground: new Paint()..shader = linearGradient1,
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil.instance.setSp(60.0),)

                  ),
                  TextSpan(text: "\n"),
                  TextSpan(text: "IV-Year  I-Semister\n"
                      "Subject - Information Security" , style: TextStyle(
                    fontFamily: 'ProductSans',
                    //color: Colors.deepOrangeAccent.withOpacity(0.7),
                    foreground: new Paint()..shader = linearGradient1,
                    fontWeight: FontWeight.normal,
                    fontSize: ScreenUtil.instance.setSp(25.0),)
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
                  onPressed: () {},
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                    decoration:  BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.blueAccent.shade400,Colors.cyanAccent.shade100,
                          // Color(0xFFff9214),
                          //Color(0xFFffba7a),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Container(
                      height:ScreenUtil.instance.setHeight(60.0),
                      width: ScreenUtil.instance.setWidth(200.0),
                      alignment: Alignment.center,
                      child:  Text(
                        'Unit - 1',
                        textAlign: TextAlign.center, style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: ScreenUtil.instance.setSp(25.0), color: Colors.white.withOpacity(0.7)) ,
                      ),
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () => _onButtonPressed1(),
                  shape: CircleBorder(),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                    decoration:  BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.blueAccent.shade400,Colors.cyanAccent.shade100,
                          // Color(0xFFff9214),
                          //Color(0xFFffba7a),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(900.0)),
                    ),
                    child: Container(
                      height: ScreenUtil.instance.setHeight(60.0),
                      width: ScreenUtil.instance.setWidth(60.0),
                      alignment: Alignment.center,
                      child: Icon(MyFlutterApp.book , size: ScreenUtil.instance.setSp(60.0), color: Colors.white,),
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
                          Colors.blueAccent.shade400,Colors.cyanAccent.shade100,
                          // Color(0xFFff9214),
                          //Color(0xFFffba7a),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Container(
                      height:ScreenUtil.instance.setHeight(60.0),
                      width: ScreenUtil.instance.setWidth(200.0),
                      alignment: Alignment.center,
                      child:  Text(
                        'Unit - 2',
                        textAlign: TextAlign.center, style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: ScreenUtil.instance.setSp(25.0), color: Colors.white.withOpacity(0.7)) ,
                      ),
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () => _onButtonPressed2(),
                  shape: CircleBorder(),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                    decoration:  BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.blueAccent.shade400,Colors.cyanAccent.shade100,
                          // Color(0xFFff9214),
                          //Color(0xFFffba7a),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(900.0)),
                    ),
                    child: Container(
                      height: ScreenUtil.instance.setHeight(60.0),
                      width: ScreenUtil.instance.setWidth(60.0),
                      alignment: Alignment.center,
                      child: Icon(MyFlutterApp.book, size: ScreenUtil.instance.setSp(60.0), color: Colors.white,),
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
                          Colors.blueAccent.shade400,Colors.cyanAccent.shade100,
                          // Color(0xFFff9214),
                          //Color(0xFFffba7a),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Container(
                      height: ScreenUtil.instance.setHeight(60.0),
                      width: ScreenUtil.instance.setWidth(200.0),
                      alignment: Alignment.center,
                      child:  Text(
                        'Unit - 3',
                        textAlign: TextAlign.center, style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: ScreenUtil.instance.setSp(25.0), color: Colors.white.withOpacity(0.7)) ,
                      ),
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () => _onButtonPressed3(),
                  shape: CircleBorder(),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                    decoration:  BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.blueAccent.shade400,Colors.cyanAccent.shade100,
                          // Color(0xFFff9214),
                          //Color(0xFFffba7a),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(900.0)),
                    ),
                    child: Container(
                      height: ScreenUtil.instance.setHeight(60.0),
                      width: ScreenUtil.instance.setWidth(60.0),
                      alignment: Alignment.center,
                      child: Icon(MyFlutterApp.book, size: ScreenUtil.instance.setSp(60.0), color: Colors.white,),
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
                          Colors.blueAccent.shade400,Colors.cyanAccent.shade100,
                          // Color(0xFFff9214),
                          //Color(0xFFffba7a),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Container(
                      height:ScreenUtil.instance.setHeight(60.0),
                      width: ScreenUtil.instance.setWidth(200.0),
                      alignment: Alignment.center,
                      child:  Text(
                        'Unit - 4',
                        textAlign: TextAlign.center, style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize:ScreenUtil.instance.setSp(25.0), color: Colors.white.withOpacity(0.7)) ,
                      ),
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () => _onButtonPressed4(),
                  shape: CircleBorder(),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                    decoration:  BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.blueAccent.shade400,Colors.cyanAccent.shade100,
                          // Color(0xFFff9214),
                          //Color(0xFFffba7a),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(900.0)),
                    ),
                    child: Container(
                      height: ScreenUtil.instance.setHeight(60.0),
                      width: ScreenUtil.instance.setWidth(60.0),
                      alignment: Alignment.center,
                      child: Icon(MyFlutterApp.book, size: ScreenUtil.instance.setSp(60.0), color: Colors.white,),
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
                          Colors.blueAccent.shade400,Colors.cyanAccent.shade100,
                          // Color(0xFFff9214),
                          //Color(0xFFffba7a),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Container(
                      height:ScreenUtil.instance.setHeight(60.0),
                      width: ScreenUtil.instance.setWidth(200.0),
                      alignment: Alignment.center,
                      child:  Text(
                        'Unit - 5',
                        textAlign: TextAlign.center, style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: ScreenUtil.instance.setSp(25.0), color: Colors.white.withOpacity(0.7)) ,
                      ),
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () => _onButtonPressed5(),
                  shape: CircleBorder(),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                    decoration:  BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.blueAccent.shade400,Colors.cyanAccent.shade100,
                          // Color(0xFFff9214),
                          //Color(0xFFffba7a),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(900.0)),
                    ),
                    child: Container(
                      height: ScreenUtil.instance.setHeight(60.0),
                      width: ScreenUtil.instance.setWidth(60.0),
                      alignment: Alignment.center,
                      child: Icon(MyFlutterApp.book, size: ScreenUtil.instance.setSp(60.0), color: Colors.white,),
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
        child: Icon(MyFlutterApp.home, color: Colors.blueAccent.shade400,size: ScreenUtil.instance.setSp(40.0),),

        backgroundColor: Colors.white,
      ),
    );
  }
  void _onButtonPressed1() {
    showModalBottomSheet(context: context, builder: (context) {
      return Container(
        color: Theme.of(context).cardTheme.color,
        //color: Color(0xff737373),
        height: ScreenUtil.instance.setHeight(300.0),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          ),
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "Syllabus - Unit I" , style: TextStyle(
                    fontFamily: 'ProductSans',
                    foreground: new Paint()..shader = linearGradient1,
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil.instance.setSp(25.0),)
                  ),
                  TextSpan(text: "\n"),
                  TextSpan(text: "\n"),
                  TextSpan(text: "Introduction to Data Mining: Introduction, What is Data Mining, Definition, KDD, Challenges, Data Mining Tasks, Data Preprocessing, Data Cleaning, Missing data, Dimensionality Reduction, Feature Subset Selection, Discretization and Binaryzation, Data Transformation; Measures of Similarity and Dissimilarity- Basics. ", style: TextStyle(
                    fontFamily: 'ProductSans',
                    //color: Colors.deepOrangeAccent.withOpacity(0.7),
                    foreground: new Paint()..shader = linearGradient1,
                    fontWeight: FontWeight.normal,
                    fontSize: ScreenUtil.instance.setSp(18.0),
                  )
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
  void _onButtonPressed2() {
    showModalBottomSheet(context: context, builder: (context) {
      return Container(
        color: Theme.of(context).cardTheme.color,
        child: Container(
          height: ScreenUtil.instance.setHeight(300.0),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          ),
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "Syllabus - Unit II" , style: TextStyle(
                    fontFamily: 'ProductSans',
                    foreground: new Paint()..shader = linearGradient1,
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil.instance.setSp(25.0),
                  )
                  ),
                  TextSpan(text: "\n"),
                  TextSpan(text: "\n"),
                  TextSpan(text: "Association Rules: Problem Definition, Frequent Item Set Generation, The APRIORI Principle, Support and Confidence Measures, Association Rule Generation; APRIOIRI Algorithm, The Partition Algorithms, FP-Growth Algorithms, Compact Representation of Frequent Item Set- Maximal Frequent Item Set, Closed Frequent Item Set.", style: TextStyle(
                    fontFamily: 'ProductSans',
                    //color: Colors.deepOrangeAccent.withOpacity(0.7),
                    foreground: new Paint()..shader = linearGradient1,
                    fontWeight: FontWeight.normal,
                    fontSize: ScreenUtil.instance.setSp(18.0),
                  )
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
  void _onButtonPressed3() {
    showModalBottomSheet(context: context, builder: (context) {
      return Container(
        color: Theme.of(context).cardTheme.color,
        child: Container(
          height: ScreenUtil.instance.setHeight(350.0),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          ),
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "Syllabus - Unit III" , style: TextStyle(
                    fontFamily: 'ProductSans',
                    foreground: new Paint()..shader = linearGradient1,
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil.instance.setSp(25.0),)
                  ),
                  TextSpan(text: "\n"),
                  TextSpan(text: "\n"),
                  TextSpan(text: "Classification: Problem Definition, General Approaches to solving a classification  problem , Evaluation of Classifiers , Classification techniques, Decision Trees-Decision tree Construction , Methods for Expressing attribute test conditions, Measures for Selecting the Best Split, Algorithm for Decision tree Induction ; Naive-Bayes Classifier, Bayesian Belief Networks; K- Nearest neighbor classification-Algorithm and Characteristics.", style: TextStyle(
                    fontFamily: 'ProductSans',
                    //color: Colors.deepOrangeAccent.withOpacity(0.7),
                    foreground: new Paint()..shader = linearGradient1,
                    fontWeight: FontWeight.normal,
                    fontSize: ScreenUtil.instance.setSp(18.0),)
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
  void _onButtonPressed4() {
    showModalBottomSheet(context: context, builder: (context) {
      return Container(
        padding: EdgeInsets.only(top: 0),
        color: Theme.of(context).cardTheme.color,
        child: Container(
          height: ScreenUtil.instance.setHeight(330.0),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          ),
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "Syllabus - Unit IV" , style: TextStyle(
                    fontFamily: 'ProductSans',
                    foreground: new Paint()..shader = linearGradient1,
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil.instance.setSp(25.0),)
                  ),
                  TextSpan(text: "\n"),
                  TextSpan(text: "\n"),
                  TextSpan(text: "Clustering: Problem Definition, Clustering Overview, Evaluation of Clustering Algorithms, Partitioning Clustering-K-Means Algorithm, K-Means Additional issues, PAM Algorithm;Hierarchical Clustering-Agglomerative Methods and divisive methods, Basic Agglomerative Hierarchical Clustering Algorithm, Specific techniques, Key Issues in Hierarchical Clustering, Strengths and Weakness; Outlier Detection.", style: TextStyle(
                    fontFamily: 'ProductSans',
                    //color: Colors.deepOrangeAccent.withOpacity(0.7),
                    foreground: new Paint()..shader = linearGradient1,
                    fontWeight: FontWeight.normal,
                    fontSize: ScreenUtil.instance.setSp(18.0),)
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
  void _onButtonPressed5() {
    showModalBottomSheet(context: context, builder: (context) {
      return Container(
        color: Theme.of(context).cardTheme.color,
        child: Container(
          height: ScreenUtil.instance.setHeight(210.0),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          ),
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "Syllabus - Unit V" , style: TextStyle(
                    fontFamily: 'ProductSans',
                    foreground: new Paint()..shader = linearGradient1,
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil.instance.setSp(25.0),)
                  ),
                  TextSpan(text: "\n"),
                  TextSpan(text: "\n"),
                  TextSpan(text: "Web and Text Mining: Introduction, web mining, web content mining, web structure mining, we usage mining, Text mining –unstructured text, episode rule discovery for texts, hierarchy of categories, text clustering.", style: TextStyle(
                    fontFamily: 'ProductSans',
                    //color: Colors.deepOrangeAccent.withOpacity(0.7),
                    foreground: new Paint()..shader = linearGradient1,
                    fontWeight: FontWeight.normal,
                    fontSize: ScreenUtil.instance.setSp(18.0),)
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

