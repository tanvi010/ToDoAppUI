import 'package:flutter/material.dart';
import 'HomePage.dart';

class PasswordChangedSucessfully extends StatefulWidget {
  @override
  _PasswordChangedSucessfullyState createState() => _PasswordChangedSucessfullyState();
}

class _PasswordChangedSucessfullyState extends State<PasswordChangedSucessfully> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // padding: EdgeInsets.all(20),
              // margin: EdgeInsets.all(20),
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('asset/image/success.png')
                )
              ),
            ),
            Text("Successfull !!",style: TextStyle(fontSize: 35.0),),
            Text("You have successfully changed our password. Please use your new password to login!",
              style: TextStyle(fontSize: 18.0,),textAlign: TextAlign.center,),
            SizedBox(height: 50.0,),
            Center(
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
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
                    'Continue..',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
