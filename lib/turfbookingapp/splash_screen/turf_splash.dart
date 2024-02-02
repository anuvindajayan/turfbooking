import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:turfbooking/turfbookingapp/login_and_registeration/turf_login.dart';

void main() {
  runApp(MaterialApp(
    home: Turf_Splash(),
  ));
}

class Turf_Splash extends StatefulWidget {
  @override
  State<Turf_Splash> createState() => _Turf_SplashState();
}

class _Turf_SplashState extends State<Turf_Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Log_turf()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(alignment: Alignment.center,
      width: double.infinity,
      height: double.infinity,
      child: Image.asset("assets/splash/kickofflogo.png",width: 150,height: 150,),
      color: Colors.white,
    ));
  }
}
