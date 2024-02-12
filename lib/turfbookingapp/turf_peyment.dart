import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(MaterialApp(
    home: Turf_Peyments(),
  ));
}

class Turf_Peyments extends StatelessWidget {
  var peyment = ["Credit card", "Debitcard", "Upi", "Mobile banking"];
  var peyicon = [
    FontAwesomeIcons.creditCard,
    FontAwesomeIcons.creditCard,
    FontAwesomeIcons.googlePay,
    FontAwesomeIcons.mobile
  ];

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
                  children: [
                    Text(
                      "KICK OFF SPORTS ARENA",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF388E3C)),
                    ),
                    Text(
                      "Turf Time   :                ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "Date               :            ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "item    :                       ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "Amount      :               ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "Gst         :                   ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "Cgst         :                 ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Divider(thickness: 1.5, height: 45),
                    Text(
                      "Total Amount                        2,000",
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
                    ),
                  )),
            ],
          )),
    );
  }
}
