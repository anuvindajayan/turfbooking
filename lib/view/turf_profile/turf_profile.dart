import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turfbooking/view/turf_profile/my_profile.dart';
import '../events_details.dart';

void main() {
  runApp(MaterialApp(
    home: Turf_profile(),
  ));
}

class Turf_profile extends StatelessWidget {
  var titles = [
    "My Profile",
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
  var pages = [
    My_profile(),
    Turf_Events(),
    Turf_Events(),
    Turf_Events(),
    Turf_Events(),
    Turf_Events(),
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
                6,
                (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => pages[index]));
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
