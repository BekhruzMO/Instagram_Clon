import 'package:flutter/material.dart';
import 'package:task_4_9/pages/sign_in.dart';

class SignUpPage extends StatefulWidget {
  static final String id = 'sign_up';

  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        //color: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Amazon',
              style: TextStyle(fontSize: 45, fontFamily: 'Billabong'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              style: TextStyle(color: Colors.black87, fontSize: 20),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                contentPadding: EdgeInsets.fromLTRB(15, 10, 10, 5),
                hintText: 'Enter your name',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                labelText: 'Name',
                labelStyle: TextStyle(color: Colors.grey, fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              style: TextStyle(color: Colors.black87, fontSize: 20),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail),
                contentPadding: EdgeInsets.fromLTRB(15, 10, 10, 5),
                hintText: 'Enter your email',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.grey, fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              style: TextStyle(color: Colors.black87, fontSize: 20),
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(15, 10, 10, 5),
                prefixIcon: Icon(Icons.vpn_key_rounded),
                suffixIcon: Icon(Icons.remove_red_eye),
                hintText: 'Enter your password',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.grey, fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              padding: EdgeInsets.all(12),
              onPressed: () {},
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              color: Colors.red,
              child: Text(
                'Log in',
                style: TextStyle(color: Colors.black87, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(color: Colors.black38),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.pushReplacementNamed(context, SignInPage.id);
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
