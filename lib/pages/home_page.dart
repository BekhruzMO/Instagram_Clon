import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = 'home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Amazon', style: TextStyle(fontFamily:'Billabong', fontSize: 28),),
      ),
      body: Center(child: Text('Welcome to Amazon', style: TextStyle(fontSize: 32),)),
    );
  }
}
