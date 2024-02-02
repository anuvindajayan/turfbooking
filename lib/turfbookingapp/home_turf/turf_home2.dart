import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turfbooking/book_now.dart';

import 'package:turfbooking/turfbookingapp/widget_refractor/Text_filed/circle_avtr.dart';
import 'package:turfbooking/turfbookingapp/widget_refractor/facilities.dart';
import 'package:turfbooking/turfbookingapp/widget_refractor/logo_refractor.dart';

void main() {
  runApp(MaterialApp(
    home: Turf_Home2(),
  ));
}

class Turf_Home2 extends StatelessWidget {
  var images = [
    "assets/splash/turfimage1.jpg",
    "assets/splash/turfimage1.jpg",
    "assets/splash/turfimage1.jpg",
    "assets/splash/turfimage1.jpg"
  ];
  var turfIcons = [
    "assets/Iconsturf/footballicon.jpg",
    "assets/Iconsturf/cricketicon.png",
    "assets/Iconsturf/badminton.png",
    "assets/Iconsturf/hokeyicon.jpg"
  ];
  var names = ["Football", "Cricket", "Badminton", "Hokey"];
  var iconss = [
    Icon(
      Icons.sports_soccer,
      size: 40,
    ),
    Icon(
      Icons.sports_cricket_sharp,
      size: 40,
    ),
    Icon(
      Icons.sports_tennis,
      size: 40,
    ),
    Icon(
      Icons.sports_hockey,
      size: 40,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Stack(
          children: [
            Container(
              height: 280,
              width: double.infinity,
              color: Colors.black,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Stack(alignment: Alignment.topRight, children: [
                  Row(
                    children: List.generate(
                      4,
                          (index) =>
                          Container(
                            child: Image.asset(
                              images[index],
                              fit: BoxFit.fill,
                            ),
                            decoration: BoxDecoration(),
                          ),
                    ),
                  ),
                ]),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 215.0, left: 150),
                child: Circle_avtr(60)),
            Padding(
              padding: const EdgeInsets.only(top: 220.0, left: 158),
              child: Kick_off_Logo(55),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Kick off sports arena",
              style: GoogleFonts.oswald(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF388E3C)),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(CupertinoIcons.location_solid)),
                Text("Kakkanad,Ernakulam,Kerala"),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Divider(
          thickness: 1,
          color: Colors.green,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Avalilable Sports",
            style: TextStyle(
                color: Color(0xFF388E3C),
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontStyle: FontStyle.italic),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                4,
                    (index) =>
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.grey)),
                        height: 100,
                        width: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            iconss[index],
                            Text(names[index]),
                          ],
                        ),
                      ),
                    )),
          ),
        ),
        Padding(
          padding:
          const EdgeInsets.only(top: 20.0, left: 15, right: 15, bottom: 20),
          child: Container(
            decoration: BoxDecoration(),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/splash/book.png",
                fit: BoxFit.fill,
              ),
            ),
            height: 150,
            width: double.infinity,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MaterialButton(
            shape: ContinuousRectangleBorder(),
            height: 60,
            color: Colors.green,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Booking_now()));
            },
            child: Text(
              "Book Now",
              style: GoogleFonts.oswald(fontSize: 30, color: Colors.white),
            ),
          ),
        ),
        Divider(
          thickness: 1,
          color: Colors.green,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 10),
          child: Text(
            "Facitities",
            style: TextStyle(
                color: Color(0xFF388E3C),
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontStyle: FontStyle.italic),
          ),
        ),
        Facilities_turf(),
        Divider(
          thickness: 1,
          color: Colors.green,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            "LIVE\nTO PLAY",
            style: GoogleFonts.oswald(
                fontWeight: FontWeight.bold,
                fontSize: 90,
                color: Color(0xFFAAE3AA)),
          ),
        )
      ]),
    );
  }
}
