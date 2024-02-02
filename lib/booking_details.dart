import 'package:flutter/material.dart';
import 'package:turfbooking/turfbookingapp/widget_refractor/logo_refractor.dart';

void main() {
  runApp(MaterialApp(
    home: Turf_Booking_Details(),
  ));
}

class Turf_Booking_Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Booking Details",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
        ),
        backgroundColor: Color(0xFF388E3C),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(width: 3),
              borderRadius: BorderRadius.circular(30)),
          height: 350,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                "KICK OFF SPORTS ARENA",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF388E3C)),
              ),
              Divider(
                thickness: 1,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18),
                    child: Kick_off_Logo(30),
                  ),
                  Text(
                    "Slot book details",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Booking Id   :     35647895125",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text("Name         :        Anuvind ",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  Text("Phone        :        987654321",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  Text("Date         :          02-02-2024",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  Text("Booking slot :    4:00 - 5:00",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  Text("Amount paid  :   300/- Advanced",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Booking      :       Succcessful",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.green)),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "Share",
                    ),
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "Cancel",
                    ),
                    color: Colors.red,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
