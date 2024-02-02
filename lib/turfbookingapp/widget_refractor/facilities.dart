import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    home: Facilities_turf(),
  ));
}

class Facilities_turf extends StatelessWidget {
  var facilities = [
    "Germen Technology Lighting Facility",
    "Changing Rooms",
    "Toilets",
    "Viewing Gallery",

    "Cricket Nets",
    "Vip Lounge Special Gallery",
    "Warm Up Track",
    "Locker",
    "Water",

    "CCTV Surveillance",
    "Womens Friendly",
    // "Live Screening",
    // "Refreshment"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(30)),
      height: 400,
      width: 300,
      alignment: Alignment.center,

      child: Wrap(spacing: 20, runSpacing: 10, children: [
        MaterialButton(elevation: 5,
          color: Colors.white,
          onPressed: () {},
          child: Text("Germen Technology Lighting Facility"),
        ),
        MaterialButton(elevation: 5,
          color: Colors.white,
          onPressed: () {},
          child: Text("Locker"),
        ),
        MaterialButton(elevation: 5,
          color: Colors.white,
          onPressed: () {},
          child: Text("Changing Rooms"),
        ),
        MaterialButton(elevation: 5,
          color: Colors.white,
          onPressed: () {},
          child: Text("Viewing Gallery"),
        ),
        MaterialButton(elevation: 5,
          color: Colors.white,
          onPressed: () {},
          child: Text("Water"),
        ),
        MaterialButton(elevation: 5,
          color: Colors.white,
          onPressed: () {},
          child: Text("Ease of Accessibility"),
        ),
        MaterialButton(elevation: 5,
          color: Colors.white,
          onPressed: () {},
          child: Text("Vip Lounge Special Gallery"),
        ),
        MaterialButton(elevation: 5,
          color: Colors.white,
          onPressed: () {},
          child: Text(
            "Parking Space",
          ),
        ),
        MaterialButton(elevation: 5,
          color: Colors.white,
          onPressed: () {},
          child: Text(
            "CCTV Surveillance",
          ),
        ),
        MaterialButton(elevation: 5,
          color: Colors.white,
          onPressed: () {},
          child: Text("Toilets"),
        ),
        MaterialButton(elevation: 5,
          color: Colors.white,
          onPressed: () {},
          child: Text("Womens Friendly"),
        ),
        MaterialButton(elevation: 5,
          color: Colors.white,
          onPressed: () {},
          child: Text("Cricket Nets"),
        ),
        MaterialButton(elevation: 5,
          color: Colors.white,
          onPressed: () {},
          child: Text("Refreshment"),
        ),
        MaterialButton(elevation: 5,
          color: Colors.white,
          onPressed: () {},
          child: Text("Warm Up Track"),
        ),
        MaterialButton(elevation: 5,
          color: Colors.white,
          onPressed: () {},
          child: Text("Live Screening"),
        ),
      ]),
    );
  }
}
