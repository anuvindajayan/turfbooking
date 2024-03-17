import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:turfbooking/modal/select_time_date.dart';
import 'package:turfbooking/view/pey_now.dart';

class Turf_Peyments extends StatelessWidget {
  var peyment = ["Credit card", "Debitcard", "Upi", "Mobile banking"];
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
          "Peyments",
          style: GoogleFonts.oswald(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.green),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFC4F8CA)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "KICK OFF SPORTS ARENA",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF388E3C),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Turf Time: ${GlobalData.times[selectedIndex]}",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "Date      :      ${DateFormat('dd/MM/yyyy').format(selectedDate)}",
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Item :",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "$item",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Amount:",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text("${selectedIndex < 9 ? "1000" : "1200"}",
                            style: TextStyle(fontSize: 20))
                      ],
                    ),
                    Divider(
                      thickness: 1.5,
                    ),
                    Text(
                      "Total Amount: ${selectedIndex < 9 ? "1000" : "1200"}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text("Peyment Method",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    4,
                    (index) => ListTile(
                      leading: FaIcon(peyicon[index]),
                      title: Text(peyment[index]),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PeyNow(
                                    selectedIndex: selectedIndex,
                                    selectedDate: selectedDate)));
                      },
                    ),
                  )),
            ],
          )),
    );
  }
}
