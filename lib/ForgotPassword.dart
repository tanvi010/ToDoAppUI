import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ResetPassword.dart';
class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ), onPressed: () {  },
      ),
    ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Forgot Password',
              style: TextStyle(fontSize: 30.0),
            ),
            Text(
              'Please enter your mail ID to receive your password and reset information..',
              style: TextStyle(fontSize: 16.0, color: Colors.grey),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Mail ID',
              style: TextStyle(fontSize: 23.0),
            ),
            TextField(
              decoration: InputDecoration(hintText: 'enter mail id',),
              style: TextStyle(fontSize: 20.0,),
            ),

            SizedBox(height: 20.0,),

            Center(
              child: InkWell(
                onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResetPassword()));

                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 100,vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7),),
                    color: Color(0xfff96060),
                  ),
                  child: Text("Send Request",
                    style: TextStyle(fontSize: 18.0,color: Colors.white),
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
