import 'package:flutter/material.dart';

import 'OnBoarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'avenir',
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    openOnBoard();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/image/aking.png'),
              )
          ),
        ),
      ),
    );
  }
  Future<void> openOnBoard() async {
    await Future.delayed(
        Duration(seconds: 5),
            () => Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoarding()))
    );
  }
}

