import 'package:flutter/material.dart';

class AppTheme{

  AppTheme._();

  static Color _iconColor = Colors.grey.shade700;
  static Color _iconColor1 = Colors.white;

  static  Color _lightTextPrimaryColor = Color(0xff4b4b4b);
  static const Color _lightPrimaryColor = Colors.white;
  static const Color _lightPrimaryVariantColor = Colors.white;
  static const Color _lightOnPrimaryColor = Colors.black;
  static const Color _cardOnPrimaryColor1 = Colors.white;
  static  Color _lightCardOnPrimaryColor = Color(0xff737373);

  static  Color _darkTextPrimaryColor = Colors.white;
  static const Color _darkPrimaryColor = Colors.black;
  static const Color _darkPrimaryVariantColor = Colors.black;
  static const Color _darkOnPrimaryColor = Colors.black;
  static  Color _cardOnPrimaryColor = Colors.grey.shade900;
  static  Color _darkCardOnPrimaryColor = Color(0xff000000);

  ////////Dark Theme

  static final ThemeData darkTheme = ThemeData(


    scaffoldBackgroundColor: _darkPrimaryVariantColor,
    /*iconTheme: IconThemeData(
      color: _iconPrimaryColor
  ),*/
    colorScheme: ColorScheme.light(
      primary: _darkPrimaryColor,
      primaryVariant: _darkPrimaryVariantColor,
      onPrimary: _darkOnPrimaryColor,
      background: _cardOnPrimaryColor,
      secondary: _darkTextPrimaryColor
    ),
    iconTheme: IconThemeData(
      color: _iconColor1,
    ),
    textTheme: _darkTextTheme,

    cardTheme: CardTheme(
        color: _darkCardOnPrimaryColor,
    ),
  );



  static final TextTheme _darkTextTheme = TextTheme(
    headline: _darkScreenHeadingTextStyle1,
    body1: _darkScreenHeadingTextStyle2,
    display1: _darkScreenHeadingTextStyle3,
    display2: _darkScreenHeadingTextStyle4,
  );

//////////////Light Theme

  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: _lightPrimaryVariantColor,
          /*iconTheme: IconThemeData(
      color: _iconPrimaryColor
  ),*/
       colorScheme: ColorScheme.light(
       primary: _lightPrimaryColor,
         primaryVariant: _lightPrimaryVariantColor,
         onPrimary: _lightOnPrimaryColor,
         background: _cardOnPrimaryColor1,
           secondary: _lightTextPrimaryColor,
  ),
    iconTheme: IconThemeData(
      color: _iconColor,
    ),
    textTheme: _lightTextTheme,

    cardTheme: CardTheme(
      color: _lightCardOnPrimaryColor,
    ),
  );



  static final TextTheme _lightTextTheme = TextTheme(
    headline: _lightScreenHeadingTextStyle1,
    body1: _lightScreenHeadingTextStyle2,
    display1: _lightScreenHeadingTextStyle3,
    display2: _lightScreenHeadingTextStyle4,
  );

  static final TextStyle _lightScreenHeadingTextStyle1 =  TextStyle(
      fontFamily: 'ProductSans',
      color: Colors.black.withOpacity(0.7),
      fontWeight: FontWeight.bold,
      fontSize: 60.0);
  static final TextStyle _lightScreenHeadingTextStyle2 =  TextStyle(
      fontFamily: 'ProductSans',
      color: Colors.black.withOpacity(0.7),
      fontWeight: FontWeight.normal,
      fontSize: 30.0);

  static final TextStyle _lightScreenHeadingTextStyle3 =  TextStyle(
      fontFamily: 'ProductSans',
      color: Colors.black.withOpacity(0.7),
      fontWeight: FontWeight.bold,
      fontSize: 30.0);

  static final TextStyle _lightScreenHeadingTextStyle4 =  TextStyle(
      fontFamily: 'ProductSans',
      fontWeight: FontWeight.bold,
      fontSize: 25, color: Colors.black.withOpacity(0.7));




  static final TextStyle _darkScreenHeadingTextStyle1 =  TextStyle(
      fontFamily: 'ProductSans',
      color: Colors.white.withOpacity(1),
      fontWeight: FontWeight.bold,
      fontSize: 60.0);
  static final TextStyle _darkScreenHeadingTextStyle2 =  TextStyle(
      fontFamily: 'ProductSans',
      color: Colors.white.withOpacity(1),
      fontWeight: FontWeight.normal,
      fontSize: 30.0);

  static final TextStyle _darkScreenHeadingTextStyle3 =  TextStyle(
      fontFamily: 'ProductSans',
      color: Colors.white.withOpacity(1),
      fontWeight: FontWeight.bold,
      fontSize: 30.0);

  static final TextStyle _darkScreenHeadingTextStyle4 =  TextStyle(
      fontFamily: 'ProductSans',
      fontWeight: FontWeight.bold,
      fontSize: 25, color: Colors.white.withOpacity(1));


}
