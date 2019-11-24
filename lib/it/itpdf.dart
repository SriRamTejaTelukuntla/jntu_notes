import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../my_flutter_app_icons.dart';


import 'it14sis.dart';


class ItPdf extends StatefulWidget {
  @override
  _ItPdfState createState() => _ItPdfState();
}

class _ItPdfState extends State<ItPdf> {

  bool _isloading = true;
  PDFDocument document;



  _unit1() async {
    document=await PDFDocument.fromURL("https://firebasestorage.googleapis.com/v0/b/jntuhbooks.appspot.com/o/R18B.TechIYearSyllabusofEEECSEIT.pdf?alt=media&token=be3037cc-fb9e-45dd-9eec-629ecd7403ea");
    setState(() {
      _isloading=false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _unit1();
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


    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(MyFlutterApp.back,size: ScreenUtil.instance.setSp(45.0),),
              color: Colors.blueAccent,
              onPressed: () {
                       Navigator.pop(context);
              },
            ),
            IconButton(
              icon: Icon(Icons.refresh,size: ScreenUtil.instance.setSp(45.0),),
              color: Colors.blueAccent,
              onPressed: _unit1,
            ),
          ],
        ),
        ),
          body:


          Center(
            child: _isloading?
              Center(
                 child: CircularProgressIndicator(),
               ):PDFViewer(document: document,
          showPicker: true),
          )
    );
  }
}

