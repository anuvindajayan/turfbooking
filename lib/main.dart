import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turfbooking/presentation/bottom_nav_screen/controller/bottom_nav_controller.dart';
import 'package:turfbooking/presentation/product_details_page/controller/product_details_controller.dart';
import 'package:turfbooking/presentation/registration_screen/controller/password_visible.dart';
import 'package:turfbooking/presentation/tab_bar/controller/tabbarcontroller.dart';
import 'package:turfbooking/presentation/splash_screen/turf_splash.dart';

import 'presentation/peynow_screen/controller/peyment_controller.dart';

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
        ChangeNotifierProvider(
          create: (context) => ProductDetailsController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Turf_Splash(),
      ),
    );
  }
}
