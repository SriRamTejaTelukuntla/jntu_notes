import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes/HomePage.dart';
import 'package:page_transition/page_transition.dart';
import 'Animations/FadeAnimation.dart';
import 'cse.dart';
import 'firebase_auth.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController _emailController;
  TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: "");
    _passwordController = TextEditingController(text: "");
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
      backgroundColor: Color.fromRGBO(3, 9, 23, 1),
      body: Container(
        //key: _formKey,
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeAnimation(1.2, Text("Hey, Login to learn",
              style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),)),
            /*SizedBox(height: 30,),
            FadeAnimation(1.5, Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey[300]))
                    ),
                    child: TextFormField(
                      validator: EmailValidator.validate,
                      controller: _emailController,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              fontFamily: 'ProductSans',
                              fontWeight: FontWeight.normal,
                              color: Colors.grey.withOpacity(.8)),
                          hintText: "Email or Phone number"
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                    ),
                    child: TextFormField(
                      validator: PasswordValidator.validate,
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              fontFamily: 'ProductSans',
                              fontWeight: FontWeight.normal,
                              color: Colors.grey.withOpacity(.8)),
                          hintText: "Password"
                      ),
                    ),
                  ),
                ],
              ),
            )),
            SizedBox(height: 40,),
            FadeAnimation(1.8, Center(
                child: RaisedButton(
                  onPressed: ()async {
                    if(_emailController.text.isEmpty || _passwordController.text.isEmpty) {
                      print("Email and password cannot be empty");
                      return;
                    }
                    bool res = await AuthProvider().signInWithEmail(_emailController.text, _passwordController.text);
                    if(!res) {
                      print("Login failed");
                    }
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
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
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: Container(
                      height: 60.0,
                      width: 150.0,
                      alignment: Alignment.center,
                      child:  Text(
                        'Login',
                        textAlign: TextAlign.center, style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white.withOpacity(0.7)) ,
                      ),
                    ),
                  ),
                )
            )),*/
            SizedBox(height: ScreenUtil.instance.setHeight(20.0),),
            FadeAnimation(1.4, Center(
              child: Container(
                alignment: Alignment.centerLeft,
                child: RaisedButton(
                  onPressed: () async {
                    bool res = await AuthProvider().loginWithGoogle();
                    if(!res)
                      print("error logging in with google");
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(8.0),topRight: Radius.circular(35.0),bottomLeft: Radius.circular(35.0),bottomRight: Radius.circular(35.0)),
                  ),
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
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(8.0),topRight: Radius.circular(35.0),bottomLeft: Radius.circular(35.0),bottomRight: Radius.circular(35.0)),
                    ),
                    child: Container(
                      height: ScreenUtil.instance.setHeight(60.0),
                      width: ScreenUtil.instance.setWidth(250.0),
                      alignment: Alignment.center,
                      child:  Text(
                        'Login with Google',
                        textAlign: TextAlign.center, style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenUtil.instance.setSp(20.0),
                          color: Colors.white.withOpacity(0.7)) ,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            )],
        ),
      ),
    );
  }
}
