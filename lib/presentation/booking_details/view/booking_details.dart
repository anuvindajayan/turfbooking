import 'package:flutter/material.dart';
import 'package:turfbooking/view/widget_refractor/logo_refractor.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:share/share.dart';

class TurfBookingDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
      future: _loadBookingDetails(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            Map<String, dynamic> bookingDetails = snapshot.data!;
            return Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  title: Text("Booking Details"),
                ),
                body: Column(
                  children: List.generate(
                    bookingDetails.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 3),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        height: 350,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 15),
                            Text(
                              "KICK OFF SPORTS ARENA",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF388E3C),
                              ),
                            ),
                            Divider(thickness: 1),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18.0, right: 18),
                                  child: Kick_off_Logo(30),
                                ),
                                Text(
                                  "Slot book details",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                // Text("Name: Anuvind", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                                // Text("Phone: 987654321", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                                Text("Date: ${bookingDetails['selectedDate']}",
                                    // ${DateFormat('dd/MM/yyyy').format(selectedDate)
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                Text(
                                    "Booking slot: ${bookingDetails['selectedIndex']}",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                Text("Amount paid: ${bookingDetails['amount']}",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 5),
                                Text("Booking: Successful",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green)),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MaterialButton(
                                  onPressed: () {
                                    String shareText = "Booking Details:\n"
                                        "Date: ${bookingDetails['selectedDate']}\n"
                                        "Booking slot: ${bookingDetails['selectedIndex']}\n"
                                        "Amount paid: ${bookingDetails['amount']}\n"
                                        "Booking: Successful";

                                    Share.share(shareText);
                                  },
                                  child: Text("Share"),
                                  color: Colors.green,
                                ),
                                SizedBox(width: 15),
                                MaterialButton(
                                  onPressed: () {},
                                  child: Text("Cancel"),
                                  color: Colors.red,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ));
          } else {
            return Scaffold(
              body: Center(
                child: Text("No Booking Details Found"),
              ),
            );
          }
        } else {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }

  Future<Map<String, dynamic>> _loadBookingDetails() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return {
      'selectedDate': prefs.getString('selectedDate') ?? '',
      'selectedIndex': prefs.getInt('selectedIndex') ?? 0,
      'item': prefs.getString('item') ?? '',
      'amount': prefs.getInt('amount') ?? 0,
    };
  }
}
