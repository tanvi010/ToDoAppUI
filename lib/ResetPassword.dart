import 'package:flutter/material.dart';
import 'PasswordChangedSuccessfully.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Reset Password',
              style: TextStyle(fontSize: 30.0),
            ),
            Text(
              'Reset code was sent to your mail Id. Please enter the code and create a new password..',
              style: TextStyle(fontSize: 16.0, color: Colors.grey),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Reset code',
              style: TextStyle(fontSize: 23.0),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: '*****',
              ),
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'Password',
              style: TextStyle(fontSize: 23.0),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'enter password',
              ),
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'Confirm Password',
              style: TextStyle(fontSize: 23.0),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Re enter your password',
              ),
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Center(
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => PasswordChangedSucessfully()));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(7),
                      ),
                      color: Color(0xfff96060),
                    ),
                    child: Text(
                      'Change Password',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
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
