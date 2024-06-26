
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turfbooking/presentation/bookingproduct_details/view/bookingpoduct_details.dart';
import 'package:turfbooking/presentation/loginscreen/view/turf_login.dart';
import 'package:turfbooking/presentation/my_profile_screen/view/my_profile.dart';
import 'package:turfbooking/presentation/turf_setting_screen/view/turf_setting.dart';
import '../../../respository/Firebase_helper/firebase_helper.dart';
import '../../event_details/view/events_details.dart';
import '../../faq_screen/view/faq_screen.dart';

class Turf_profile extends StatelessWidget {
  var titles = [
    "My Profile",
    "FAQ",
    "Settings",
    "Rent items booking details ",
    "Logout",
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
      Icons.settings,
      color: Colors.white,
    ),
    Icon(
      Icons.shopping_bag_outlined,
      color: Colors.white,
    ),
    Icon(
      Icons.logout,
      color: Colors.white,
    ),
    Icon(
      CupertinoIcons.star_circle_fill,
      color: Colors.white,
    ),
  ];
  var pages = [
    My_profile(),
    FaqScreen(),
    TurfSetting(),
    BookingDetailsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => showExit(context),
              );
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      size: 150,
                    ),
                    // Text(
                    //   "Anuvind",
                    //   style: TextStyle(fontSize: 20),
                    // ),
                    // Text(
                    //   "anuvind@gmail.com",
                    //   style: TextStyle(fontSize: 20),
                    // )
                  ],
                ),
                height: 300,
                width: double.infinity,
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: List.generate(
                  titles.length,
                      (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      onTap: () {
                        if (index == titles.length - 1) {
                          // Logout option
                          _logout(context);
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => pages[index],
                            ),
                          );
                        }
                      },
                      title: Text(
                        titles[index],
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      leading: icons[index],
                      tileColor: Colors.green,
                      shape: StadiumBorder(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _logout(BuildContext context) {
    FireBaseHelper().logout().then((value) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => Log_turf()),
            (route) => false,
      );
    }).catchError((error) {
      // Handle error
      print("Logout error: $error");
    });
  }

  showExit(BuildContext context) {
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.center,
      content: Container(
        width: 200,
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.question_answer,
              size: 40,
            ),
            SizedBox(height: 10),
            Text("Are you sure you want to\nlogout?"),
          ],
        ),
      ),
      actions: [
        MaterialButton(
          color: Colors.green,
          shape: StadiumBorder(),
          onPressed: () {
            _logout(context);
          },
          child: Text(
            '  Ok  ',
            style: TextStyle(color: Colors.white),
          ),
        ),
        MaterialButton(
          color: Colors.green,
          shape: StadiumBorder(),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Cancel',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
