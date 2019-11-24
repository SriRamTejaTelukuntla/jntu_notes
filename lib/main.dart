import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notes/LoginPage.dart';
import 'package:notes/app_state.dart';
import 'package:notes/app_theme.dart';
import 'package:notes/splashscreen.dart';
import 'package:provider/provider.dart';

import 'HomePage.dart';


void main(){
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(ChangeNotifierProvider<AppState>(
    builder: (context) => AppState(),
    child: MyApp(),
  ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, appState, child){
        return MaterialApp(
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: appState.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
            home: LoginPage(),
        debugShowCheckedModeBanner: false,

        );

      },
    );
  }
}


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (context,AsyncSnapshot<FirebaseUser> snapshot) {
        if(!snapshot.hasData || snapshot.data == null)
          return LoginPage();
        return MyHomePage();
      },
    );
  }
}