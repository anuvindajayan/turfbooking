

import 'package:flutter/material.dart';

class Kick_off_Logo extends StatelessWidget {
  double radius;

  Kick_off_Logo(this.radius);

  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage("assets/splash/kickofflogo.png"),
    );
  }
}
