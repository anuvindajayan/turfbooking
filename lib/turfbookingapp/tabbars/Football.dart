import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turfbooking/turfbookingapp/turf_peyment.dart';

void main() {
  runApp(MaterialApp(
    home: Turf_Football(),
  ));
}

class Turf_Football extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            height: 150,
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    31,
                    (index) => Padding(
                          padding: const EdgeInsets.only(top: 40.0, left: 10),
                          child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 3),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              height: 80,
                              width: 60,
                              child: Column(
                                children: [
                                  Text("Month"),
                                  Text(
                                    "$index",
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )),
                        )),
              ),
            ),
          ),
          Text(
            "Select Time",
            style: TextStyle(fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(border: Border.all(width: 3)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 150,
                  height: 60,
                  color: Colors.green,
                  child: Text(
                    "950/hour",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  width: 150,
                  height: 60,
                  color: Colors.green,
                  child: Text(""),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            minWidth: 300,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Turf_Peyments()));
            },
            child: Text(
              "Book Now",
              style: GoogleFonts.oswald(fontSize: 35, color: Colors.white),
            ),
            color: Colors.green,
          )
        ]));
  }
}
