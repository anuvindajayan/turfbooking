import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turfbooking/controller/bottom_nav_controller.dart';
import 'package:turfbooking/view/bottom_nav_screen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => Bottom_NavigationController(),

      )
    ], child: MaterialApp(
      home: Bottom_Nav_Screen(),
    ),);
  }
}
