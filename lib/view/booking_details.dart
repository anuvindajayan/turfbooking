import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:turfbooking/view/widget_refractor/logo_refractor.dart';

import '../modal/select_time_date.dart';

//
// class Turf_Booking_Details extends StatelessWidget {
//   final int? selectedIndex;
//   final DateTime? selectedDate;
//   final String? item;
//   final int? amount;
//
//   Turf_Booking_Details({this.selectedDate,
//     this.selectedIndex,
//     this.item,
//     this.amount,});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(automaticallyImplyLeading: false,
//         title: Text(
//           "Booking Details",
//           style: TextStyle(
//               fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
//         ),
//         backgroundColor: Color(0xFF388E3C),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Container(
//             decoration: BoxDecoration(
//                 border: Border.all(width: 3),
//                 borderRadius: BorderRadius.circular(30)),
//             height: 350,
//             width: double.infinity,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//               SizedBox(
//               height: 15,
//             ),
//             Text(
//               "KICK OFF SPORTS ARENA",
//               style: TextStyle(
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xFF388E3C)),
//             ),
//             Divider(
//               thickness: 1,
//             ),
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 18.0, right: 18),
//                   child: Kick_off_Logo(30),
//                 ),
//                 Text(
//                   "Slot book details",
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 5,
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//
//             Text("Name         :        Anuvind ",
//                 style:
//                 TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
//             Text("Phone        :        987654321",
//                 style:
//                 TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
//             Text("Date         :        ${DateFormat('dd/MM/yyyy').format(
//                 selectedDate!)}",
//                 style:
//                 TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
//             Text(
//                 "Booking slot :  ${selectedIndex}",
//                 style:
//                 TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
//         Text("Amount paid  :   $amount",
//             style:
//             TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
//         SizedBox(
//           height: 5,
//         ),
//         Text("Booking      :       Succcessful",
//             style: TextStyle(
//                 fontSize: 15,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.green)),
//         ],
//       ),
//       SizedBox(
//         height: 5,
//       ),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           MaterialButton(
//             onPressed: () {},
//             child: Text(
//               "Share",
//             ),
//             color: Colors.green,
//           ),
//           SizedBox(
//             width: 15,
//           ),
//           MaterialButton(
//             onPressed: () {},
//             child: Text(
//               "Cancel",
//             ),
//             color: Colors.red,
//           ),
//         ],
//       )
//       ],
//     ),)
//     ,
//     )
//     ,
//     );
//     }
//   }
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:turfbooking/view/widget_refractor/logo_refractor.dart';
//
// class Turf_Booking_Details extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: _loadBookingDetails(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.done) {
//           if (snapshot.hasData) {
//             Map<String, dynamic> bookingDetails = snapshot.data as Map<String, dynamic>;
//             return Scaffold(
//               appBar: AppBar(
//                 automaticallyImplyLeading: false,
//                 title: Text(
//                   "Booking Details",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 25,
//                     color: Colors.white,
//                   ),
//                 ),
//                 backgroundColor: Color(0xFF388E3C),
//               ),
//               body: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(width: 3),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   height: 350,
//                   width: double.infinity,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       SizedBox(height: 15),
//                       Text(
//                         "KICK OFF SPORTS ARENA",
//                         style: TextStyle(
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xFF388E3C),
//                         ),
//                       ),
//                       Divider(thickness: 1),
//                       Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(left: 18.0, right: 18),
//                             child: Kick_off_Logo(30),
//                           ),
//                           Text(
//                             "Slot book details",
//                             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 5),
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Text("Name         :        ${bookingDetails['name']}",
//                               style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
//                           Text("Phone        :        ${bookingDetails['phone']}",
//                               style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
//                           Text("Date         :        ${bookingDetails['selectedDate']}",
//                               style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
//                           Text("Booking slot :  ${bookingDetails['selectedIndex']}",
//                               style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
//                           Text("Amount paid  :   ${bookingDetails['amount']}",
//                               style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
//                           SizedBox(height: 5),
//                           Text("Booking      :       Successful",
//                               style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.green)),
//                         ],
//                       ),
//                       SizedBox(height: 5),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           MaterialButton(
//                             onPressed: () {},
//                             child: Text("Share"),
//                             color: Colors.green,
//                           ),
//                           SizedBox(width: 15),
//                           MaterialButton(
//                             onPressed: () {},
//                             child: Text("Cancel"),
//                             color: Colors.red,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           } else {
//             return Scaffold(
//               body: Center(
//                 child: Text("No Booking Details Found"),
//               ),
//             );
//           }
//         } else {
//           return Scaffold(
//             body: Center(
//               child: CircularProgressIndicator(),
//             ),
//           );
//         }
//       },
//     );
//   }
//
//   Future<Map<String, dynamic>> _loadBookingDetails() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     return {
//       'name': prefs.getString('name') ?? '',
//       'phone': prefs.getString('phone') ?? '',
//       'selectedDate': prefs.getString('selectedDate') ?? '',
//       'selectedIndex': prefs.getInt('selectedIndex') ?? '',
//       'amount': prefs.getInt('amount') ?? '',
//     };
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:turfbooking/view/widget_refractor/logo_refractor.dart';
//
// class Turf_Booking_Details extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<Map<String, dynamic>>(
//       future: _loadBookingDetails(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.done) {
//           if (snapshot.hasData) {
//             Map<String, dynamic> bookingDetails = snapshot.data!;
//             return Scaffold(
//               appBar: AppBar(
//                 title: Text("Booking Details"),
//               ),
//               body: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(width: 3),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   height: 350,
//                   width: double.infinity,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       SizedBox(height: 15),
//                       Text(
//                         "KICK OFF SPORTS ARENA",
//                         style: TextStyle(
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xFF388E3C),
//                         ),
//                       ),
//                       Divider(thickness: 1),
//                       Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(left: 18.0, right: 18),
//                             child: Kick_off_Logo(30),
//                           ),
//                           Text(
//                             "Slot book details",
//                             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 5),
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           // Text("Name: Anuvind", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
//                           // Text("Phone: 987654321", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
//                           Text("Date: ${bookingDetails['selectedDate']}", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
//                           Text("Booking slot: ${bookingDetails['selectedIndex']}", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
//                           Text("Amount paid: ${bookingDetails['amount']}", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
//                           SizedBox(height: 5),
//                           Text("Booking: Successful", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.green)),
//                         ],
//                       ),
//                       SizedBox(height: 5),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           MaterialButton(
//                             onPressed: () {},
//                             child: Text("Share"),
//                             color: Colors.green,
//                           ),
//                           SizedBox(width: 15),
//                           MaterialButton(
//                             onPressed: () {},
//                             child: Text("Cancel"),
//                             color: Colors.red,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           } else {
//             return Scaffold(
//               body: Center(
//                 child: Text("No Booking Details Found"),
//               ),
//             );
//           }
//         } else {
//           return Scaffold(
//             body: Center(
//               child: CircularProgressIndicator(),
//             ),
//           );
//         }
//       },
//     );
//   }
//
//   Future<Map<String, dynamic>> _loadBookingDetails() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     return {
//       'selectedDate': prefs.getString('selectedDate') ?? '',
//       'selectedIndex': prefs.getInt('selectedIndex') ?? 0,
//       'item': prefs.getString('item') ?? '',
//       'amount': prefs.getInt('amount') ?? 0,
//     };
//   }
// }
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:turfbooking/view/widget_refractor/logo_refractor.dart';
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
              appBar: AppBar(automaticallyImplyLeading: false,
                title: Text("Booking Details"),
              ),
              body: Padding(
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
                                fontSize: 20, fontWeight: FontWeight.bold),
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
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Text(
                              "Booking slot: ${bookingDetails['selectedIndex']}",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Text("Amount paid: ${bookingDetails['amount']}",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Text("Booking: Successful", style: TextStyle(
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
            );
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

