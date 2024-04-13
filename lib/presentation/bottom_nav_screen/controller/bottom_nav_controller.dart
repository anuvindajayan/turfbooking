import 'package:flutter/material.dart';
import 'package:turfbooking/presentation/rentitem_screen/view/turf_shopings.dart';
import 'package:turfbooking/presentation/booking_details/view/booking_details.dart';
import 'package:turfbooking/presentation/event_details/view/events_details.dart';
import 'package:turfbooking/presentation/home_screen/view/home_screen.dart';
import 'package:turfbooking/presentation/turfprofile_screen/view/turf_profile.dart';


class Bottom_NavigationController extends ChangeNotifier {
  var selectedIndex = 0;

  void OnTap(index) {
    selectedIndex = index;
    notifyListeners();
  }

  List<Widget> myscreen = [
    HomeScreen(),
    EventDetailsScreen(),
    TurfBookingDetails(),
    RentItemsScreen(),
    Turf_profile()
  ];
}

