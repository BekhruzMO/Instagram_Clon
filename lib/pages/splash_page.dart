import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task_4_9/pages/home_page.dart';
import 'package:task_4_9/pages/sign_in.dart';

class SplashPage extends StatefulWidget {
  static final String id = 'splash_page';
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  _initTimer(){
      Timer(Duration(seconds: 3), (){
        Navigator.pushReplacementNamed(context, SignInPage.id);
      });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initTimer();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(40),
          child: Stack(
            children: [
              Center(
                child: Container(
  child: CircleAvatar(
    backgroundImage: AssetImage('assets/images/instagram.png',),
    radius: 40,

  ),
),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('From Facebook', style:TextStyle(fontSize: 22),),
                  ],
                ),
              )
            ],
          ),
        ),

    );
  }
}
