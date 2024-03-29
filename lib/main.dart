import 'package:flutter/material.dart';
import 'package:flweb_third/LandingPage/LandingPage.dart';
import 'package:flweb_third/Navbar/Navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 3번째',
      theme: ThemeData(
        primarySwatch: Colors.blue,fontFamily: "Montserrat"
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        decoration : BoxDecoration(
          gradient : LinearGradient(
            begin : Alignment.centerLeft,
            end : Alignment.centerRight,
            colors : [
              Color.fromRGBO(195, 20, 50, 1),
              Color.fromRGBO(36, 11, 54, 1)]
          ),
        ),
        child: SingleChildScrollView( 
          child: Column(
          children: <Widget>[
            Navbar(), 
            Padding(
              padding : const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child:LandingPage(),
            )
          ],
        ),
      ),
      )
    );
  }
}
