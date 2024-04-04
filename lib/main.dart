import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turfbooking/controller/bottom_nav_controller.dart';
import 'package:turfbooking/controller/password_visible.dart';
import 'package:turfbooking/controller/tabbarcontroller.dart';
import 'package:turfbooking/presentation/splash_screen/turf_splash.dart';

import 'controller/peyment_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBPGBNkEQJjO9SmJVYhx9sGY90lZ_ogp2s",
          appId: "1:701030716157:android:d8b3db53ff443f793da494",
          messagingSenderId: "",
          projectId: "turfbooking-d9e10",
          storageBucket: "turfbooking-d9e10.appspot.com"));
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Bottom_NavigationController(),
        ),
        ChangeNotifierProvider(
          create: (context) => PasswordVisibleController(),
        ),
        ChangeNotifierProvider(create: (context) => TurfTabController()),
        ChangeNotifierProvider(
          create: (context) => PasswordVisibleController(),
        ),
        ChangeNotifierProvider(
          create: (context) => PeymentProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Turf_Splash(),
      ),
    );
  }
}
