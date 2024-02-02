import 'package:flutter/material.dart';

class Circle_avtr extends StatelessWidget {
  double? radius;

  Circle_avtr(this.radius,);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: Colors.black,width: 2)),
      child: CircleAvatar(
        radius: radius,
        backgroundColor: Colors.white
      ),
    );
  }
}
