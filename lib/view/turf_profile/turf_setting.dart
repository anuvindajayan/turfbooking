import 'package:flutter/material.dart';

class TurfSetting extends StatelessWidget {
  const TurfSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings", style: TextStyle(color: Colors.white),),),
      body: SafeArea(child: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Allow Public push Notification",
              style: TextStyle(fontSize: 20),),
            SizedBox(width: 5,),
            ToggleButtons(children: [Icon(Icons.toggle_off_outlined)],
                isSelected: [false])
          ],),
      ],)),
    );
  }
}
