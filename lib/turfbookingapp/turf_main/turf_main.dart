import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turfbooking/booking_details.dart';
import 'package:turfbooking/events_details.dart';
import 'package:turfbooking/turfbookingapp/home_turf/turf_home2.dart';
import 'package:turfbooking/turf_shopings.dart';
import 'package:turfbooking/turf_profile.dart';

class Turf_main extends StatefulWidget {
  const Turf_main({super.key});

  @override
  State<Turf_main> createState() => _Turf_mainState();
}

class _Turf_mainState extends State<Turf_main> {
  int index = 0;
  var screen = [
    Turf_Home2(),
    Turf_Events(),
    Turf_Booking_Details(),
    Turf_Shoppings(),
    Turf_profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          currentIndex: index,
          selectedItemColor: Colors.green,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.sports_soccer), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.emoji_events), label: "Events"),
            BottomNavigationBarItem(
                icon: Icon(Icons.history_edu_rounded), label: "Bookings"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: "Shopping"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.profile_circled), label: "Profile"),
          ]),
      body: screen[index],
    );
  }
}
