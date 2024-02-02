import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turfbooking/my_profile.dart';

void main() {
  runApp(MaterialApp(
    home: Turf_profile(),
  ));
}

class Turf_profile extends StatelessWidget {
  var titles = [
    "My Profile",
    "Help and Support",
    "Cancellation",
    "Booking History",
    "FAQ",
    "Settings",
    "Rate us"
  ];
  var icons = [
    Icon(
      CupertinoIcons.profile_circled,
      color: Colors.white,
    ),
    Icon(
      CupertinoIcons.headphones,
      color: Colors.white,
    ),
    Icon(
      Icons.cancel,
      color: Colors.white,
    ),
    Icon(
      Icons.history,
      color: Colors.white,
    ),
    Icon(
      CupertinoIcons.question_circle,
      color: Colors.white,
    ),
    Icon(
      Icons.settings,
      color: Colors.white,
    ),
    Icon(
      CupertinoIcons.star_circle_fill,
      color: Colors.white,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Column(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.profile_circled,
                  size: 150,
                ),
                Text(
                  "Anuvind",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "anuvind@gmail.com",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            height: 400,
            width: double.infinity,
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: List.generate(
                7,
                (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => My_profile()));
                        },
                        title: Text(
                          titles[index],
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        leading: icons[index],
                        tileColor: Colors.green,
                        shape: StadiumBorder(),
                      ),
                    )),
          )
        ],
      ),
    ]));
  }
}
