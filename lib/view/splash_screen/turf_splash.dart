import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:turfbooking/view/bottom_nav_screen.dart';

import '../login_and_registeration/turf_login.dart';



// class Turf_Splash extends StatefulWidget {
//   @override
//   State<Turf_Splash> createState() => _Turf_SplashState();
// }
//
// class _Turf_SplashState extends State<Turf_Splash> {
//   @override
//   void initState() {
//     super.initState();
//     navigateToNextScreen();
//   }
//
//   void navigateToNextScreen() {
//     Timer(Duration(seconds: 3), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => Log_turf()),
//       );
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         alignment: Alignment.center,
//         width: double.infinity,
//         height: double.infinity,
//         child: Image.asset(
//           "assets/splash/kickofflogo.png",
//           width: 150,
//           height: 150,
//         ),
//         color: Colors.white,
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

class Turf_Splash extends StatefulWidget {
  @override
  State<Turf_Splash> createState() => _Turf_SplashState();
}

class _Turf_SplashState extends State<Turf_Splash> {
  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  void navigateToNextScreen() {
    Timer(Duration(seconds: 3), () {
      checkLoginStatus();
    });
  }

  void checkLoginStatus() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      // User is logged in
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Bottom_Nav_Screen()),
      );
    } else {
      // User is not logged in
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Log_turf()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: Image.asset(
          "assets/splash/kickofflogo.png",
          width: 150,
          height: 150,
        ),
        color: Colors.white,
      ),
    );
  }
}