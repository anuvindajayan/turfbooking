import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turfbooking/controller/bottom_nav_controller.dart';

class Bottom_Nav_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Provider.of<Bottom_NavigationController>(context).myscreen[
          Provider.of<Bottom_NavigationController>(context).selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          onTap: (index) =>
              Provider.of<Bottom_NavigationController>(context, listen: false)
                  .OnTap(index),
          currentIndex: Provider.of<Bottom_NavigationController>(
            context,
          ).selectedIndex,
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
    );
  }
}
