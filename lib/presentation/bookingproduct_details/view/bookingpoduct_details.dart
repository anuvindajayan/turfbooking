// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class BookingDetailsPage extends StatefulWidget {
//   @override
//   _BookingDetailsPageState createState() => _BookingDetailsPageState();
// }
//
// class _BookingDetailsPageState extends State<BookingDetailsPage> {
//   List<String> bookingDetails = [];
//
//   @override
//   void initState() {
//     super.initState();
//     _loadBookingDetails();
//   }
//
//   Future<void> _loadBookingDetails() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     setState(() {
//       bookingDetails = prefs.getStringList('cartItems') ?? [];
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Booking Details"),
//       ),
//       body: bookingDetails.isEmpty
//           ? Center(
//         child: Text("No booking details available"),
//       )
//           : ListView.builder(
//         itemCount: bookingDetails.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(bookingDetails[index]),
//           );
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BookingDetailsPage extends StatefulWidget {
  @override
  _BookingDetailsPageState createState() => _BookingDetailsPageState();
}

class _BookingDetailsPageState extends State<BookingDetailsPage> {
  List<String> bookingDetails = [];

  @override
  void initState() {
    super.initState();
    _loadBookingDetails();
  }

  Future<void> _loadBookingDetails() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      bookingDetails = prefs.getStringList('cartItems') ?? [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Details"),
      ),
      body: bookingDetails.isEmpty
          ? Center(
        child: Text(
          "No booking details available",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      )
          : ListView.builder(
        itemCount: bookingDetails.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            elevation: 2,
            child: ListTile(
              title: Text(
                bookingDetails[index],
                style: TextStyle(fontSize: 16),
              ),
            ),
          );
        },
      ),
    );
  }
}
