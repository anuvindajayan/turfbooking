// import 'package:flutter/material.dart';
//
// class TurfSetting extends StatelessWidget {
//   const TurfSetting({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Settings", style: TextStyle(color: Colors.white),),),
//       body: SafeArea(child: Column(children: [
//         Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Text("Allow Public push Notification",
//               style: TextStyle(fontSize: 20),),
//             SizedBox(width: 5,),
//             ToggleButtons(children: [Icon(Icons.toggle_off_outlined)],
//                 isSelected: [false])
//           ],),
//       ],)),
//     );
//   }
// }
import 'package:flutter/material.dart';

class TurfSetting extends StatefulWidget {
  const TurfSetting({Key? key}) : super(key: key);

  @override
  _TurfSettingState createState() => _TurfSettingState();
}

class _TurfSettingState extends State<TurfSetting> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Allow Public push Notification",
                    style: TextStyle(fontSize: 20),
                  ),
                  Switch(
                    value: isSwitched,
                    onChanged: (newValue) {
                      setState(() {
                        isSwitched = newValue;
                      });
                      if (isSwitched) {
                        print("Switch is ON");
                      } else {
                        print("Switch is OFF");
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
