import 'package:flutter/material.dart';
import 'package:task_4_9/pages/home_page.dart';
import 'package:task_4_9/pages/sign_in.dart';
import 'package:task_4_9/pages/sign_up.dart';
import 'package:task_4_9/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
      routes: {
        SplashPage.id:(context)=>SplashPage(),
        HomePage.id:(context)=>HomePage(),
        SignInPage.id:(context)=>SignInPage(),
        SignUpPage.id:(context)=>SignUpPage(),
      },
    );
  }
}

