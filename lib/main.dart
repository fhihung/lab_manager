import 'package:flutter/material.dart';
import 'package:lab_manager/screens/welcome/welcome_screen.dart';
import './constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab Manager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        backgroundColor: Color(0xFFFFFF),
        brightness: Brightness.light,
        // useMaterial3: true,
        textTheme: TextTheme(
          labelMedium: TextStyle(
              color: Colors.black54, fontSize: 15, fontFamily: 'Poppins'),
          button: TextStyle(
              color: Color(0xff5884f3), fontSize: 16, fontFamily: 'Poppins'),
          headline1: TextStyle(
              color: Color(0xff5884f3),
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold),
          headline2: TextStyle(
              color: Color(0xff5884f3),
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600),
          headline3: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700),
          headline4: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600),
          headline5: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          primary: Color(0xff5884f3),
          onPrimary: Color(0xFFFEFCF3),
          minimumSize: Size(360, 60),
        )),
      ),
      home: WelcomeScreen(),
    );
  }
}
