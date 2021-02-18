import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/ForgotPassword.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black), // for back button
        backgroundColor: Colors.transparent,
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.arrow_back,
        //     color: Colors.black,
        //   ), onPressed: () {  },
        // ),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back',
              style: TextStyle(fontSize: 30.0),
            ),
            Text(
              'Sign In to Continue...',
              style: TextStyle(fontSize: 16.0, color: Colors.grey),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'UserName',
              style: TextStyle(fontSize: 23.0),
            ),
            TextField(
              decoration: InputDecoration(hintText: 'enter user name',),
              style: TextStyle(fontSize: 20.0,),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'Password',
              style: TextStyle(fontSize: 23.0),
            ),
            TextField(
              decoration: InputDecoration(hintText: 'enter password',),
              style: TextStyle(fontSize: 20.0,),
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ForgotPassword()));
                  },
                  child: Text(
                    "Forgot Password ?", style: TextStyle(fontSize: 16.0),),
                )
              ],
            ),
            SizedBox(height: 20.0,),
            Expanded(
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 130),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7),),
                    color: Color(0xfff96060),
                  ),
                  child: Text('Log In',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
