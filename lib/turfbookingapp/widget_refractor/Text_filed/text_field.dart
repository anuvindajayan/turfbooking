import 'dart:ui';

import 'package:flutter/material.dart';

class text_field extends StatelessWidget {
  String labeltext;
  Color textcolour;
  Icon suffixicon;
  Color iconcolour;

  text_field(
      this.labeltext,this.textcolour,this.suffixicon,this.iconcolour);

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            label: Text(labeltext,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: textcolour)),
            suffixIcon: suffixicon,
            iconColor: iconcolour));
  }
}
