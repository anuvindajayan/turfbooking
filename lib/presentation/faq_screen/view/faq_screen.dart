import 'package:flutter/material.dart';

class FaqScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          // Add padding horizontally
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "How do I cancel a confirmed booking? ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                    "You can contact Kick off sports arena customer support on 987654321 or the ground. Generally, we allow cancellations up to 3 hours before the scheduled game time.Please keep in mind that these policies are subject to change based on the specific terms of each venue."),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "*If I cancel my booking, how will I get my refund?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                    "If a confirmed booking is cancelled 3 hours before the game 5% of the booking amount will be charged as payment gateway charge. Last minute cancellation, refund policy depends upon ground policy")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
