import 'package:flutter/material.dart';

import 'package:turfbooking/turfbookingapp/tabbars/Football.dart';
import 'package:turfbooking/view/turf_home2.dart';

void main() {
  runApp(MaterialApp(
    home: Booking_now(),
  ));
}

class Booking_now extends StatelessWidget {
  var screens = [Turf_Home2(), Turf_Home2(), Turf_Home2(), Turf_Home2()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(indicatorColor: Colors.green, tabs: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(10)),
              alignment: Alignment.center,
              height: 30,
              width: 80,
              child: Text(
                "Football",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(10)),
              alignment: Alignment.center,
              height: 30,
              width: 80,
              child: Text("Cricket", style: TextStyle(color: Colors.white)),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(10)),
              alignment: Alignment.center,
              height: 30,
              width: 80,
              child: Text("Hokey", style: TextStyle(color: Colors.white)),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(10)),
              alignment: Alignment.center,
              height: 30,
              width: 100,
              child: Text("Badminton", style: TextStyle(color: Colors.white)),
            ),
          ]),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: TabBarView(children: [
            Turf_Football(),
            Turf_Football(),
            Turf_Football(),
            Turf_Football(),
          ]),
        ),
      ),
    );
  }
}
