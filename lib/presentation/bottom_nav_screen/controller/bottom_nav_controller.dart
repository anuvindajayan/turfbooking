import 'package:flutter/material.dart';
import 'package:turfbooking/presentation/rentitem_screen/view/turf_shopings.dart';
import 'package:turfbooking/view/booking_details.dart';
import 'package:turfbooking/view/events_details.dart';
import 'package:turfbooking/view/turf_home2.dart';
import 'package:turfbooking/view/turf_profile/turf_profile.dart';


class Bottom_NavigationController extends ChangeNotifier {
  var selectedIndex = 0;

  void OnTap(index) {
    selectedIndex = index;
    notifyListeners();
  }

  List<Widget> myscreen = [
    Turf_Home2(),
    Turf_Events(),
    TurfBookingDetails(),
    RentItemsScreen(),
    Turf_profile()
  ];
}

