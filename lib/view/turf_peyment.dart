import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:turfbooking/modal/select_time_date.dart';
import 'package:turfbooking/view/pey_now.dart';

class Turf_Peyments extends StatelessWidget {
  var peyment = ["Credit card", "Debit card", "UPI", "Mobile banking"];
  var peyicon = [
    FontAwesomeIcons.creditCard,
    FontAwesomeIcons.creditCard,
    FontAwesomeIcons.googlePay,
    FontAwesomeIcons.mobile
  ];
  final String item;
  final int selectedIndex;
  final DateTime selectedDate;

  Turf_Peyments({
    required this.selectedIndex,
    required this.selectedDate,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Payments",
          style: GoogleFonts.oswald(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.green),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "KICK OFF SPORTS ARENA",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF388E3C),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Turf Time: ${GlobalData.times[selectedIndex]}",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Date      :      ${DateFormat('dd/MM/yyyy').format(selectedDate)}",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Item :",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "$item",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Amount:",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "${selectedIndex < 9 ? "1000" : "1200"}",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1.5,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Amount:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "${selectedIndex < 9 ? "1000" : "1200"}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Payment Method",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                4,
                (index) => ListTile(
                  tileColor: Colors.white,
                  leading: FaIcon(peyicon[index]),
                  title: Text(
                    peyment[index],
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PeyNow(
                          selectedIndex: selectedIndex,
                          selectedDate: selectedDate,
                          item: item,
                          amount: selectedIndex < 9 ? 1000 : 1200,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
