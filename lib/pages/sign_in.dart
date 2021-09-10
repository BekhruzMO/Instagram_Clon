import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_4_9/pages/home_page.dart';
import 'package:task_4_9/pages/sign_up.dart';

class SignInPage extends StatefulWidget {
  static final String id = 'sign_in';
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();

  _getSignUp(){
    String email = _emailController.text;
    String pass = _passController.text;
    if(email.isNotEmpty && pass.isNotEmpty){
      Navigator.pushNamedAndRemoveUntil(context, HomePage.id, (route) => false);
    }
    else {

    }

  }

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
              Text('Amazon', style: TextStyle(fontSize: 45, fontFamily: 'Billabong'),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: _emailController,
                style: TextStyle(color: Colors.black87,fontSize: 20),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(15, 10, 10, 5),
                  prefixIcon: Icon(Icons.mail),
                  hintText: 'Enter your email',
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 16),
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.grey,fontSize: 16),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(16),),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: _passController,
                style: TextStyle(color: Colors.black87,fontSize: 20),
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(15, 10, 10, 5),
                  prefixIcon: Icon(Icons.vpn_key_rounded),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 16),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.grey,fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),


                  ),


                ),
              ),
              SizedBox(height: 20,),

              MaterialButton(

                padding: EdgeInsets.all(12),
                onPressed: (){_getSignUp();},
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                ),
                color: Colors.red,
                child: Text('Log in',style:TextStyle(color: Colors.black87,fontSize: 20),),
              ),
              SizedBox(height: 20,),

              Container(
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Don\'t have an account?',style: TextStyle(color: Colors.black38), ),
                    SizedBox(width: 20,),
                    GestureDetector(
                      child: Text('Sign up', style: TextStyle(fontWeight: FontWeight.bold),),
                      onTap: (){
                        Navigator.pushNamed(context, SignUpPage.id);
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
