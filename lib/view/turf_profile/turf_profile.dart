import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turfbooking/view/login_and_registeration/turf_login.dart';
import 'package:turfbooking/view/turf_profile/file.dart';
import 'package:turfbooking/view/turf_profile/my_profile.dart';
import 'package:turfbooking/view/turf_profile/turf_setting.dart';
import '../../modal/firebase_auth_function.dart';
import '../events_details.dart';

class Turf_profile extends StatelessWidget {
  var titles = [
    "My Profile",
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
    TurfFaq(),
    TurfSetting(),
    Turf_Events(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {
                  showDialog(context: (context), builder: (context)=>showExit(context));
                },
                icon: Icon(Icons.logout))
          ],
        ),
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
                    4,
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            leading: icons[index],
                            tileColor: Colors.green,
                            shape: StadiumBorder(),
                          ),
                        )),
              ),
            ],
          ),
        ]));
  }

  showExit(BuildContext context) {
    return AlertDialog(actionsAlignment: MainAxisAlignment.center,
      content: Container(
        width: 200,
        height: 100,
        child:Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(CupertinoIcons.question_circle,size: 40,),
            SizedBox(height: 10,),
            Text("Are you sure want to \n           Logout"),
          ],
        )
      ),
      actions: [
        MaterialButton(color: Colors.green,shape: StadiumBorder(),
          onPressed: () {
            FireBaseHelper().logout().then((value) =>
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Log_turf()), (route) => false));
          },
          child: Text('  Ok  ',style: TextStyle(color: Colors.white)),
        ),
        MaterialButton(color: Colors.green,shape: StadiumBorder(),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Cancel',style: TextStyle(color: Colors.white),),
        ),
      ],
    );
  }
  }

