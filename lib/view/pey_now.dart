// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:lottie/lottie.dart';
// import 'package:provider/provider.dart';
// import 'package:turfbooking/modal/select_time_date.dart';
// import 'package:turfbooking/view/bottom_nav_screen.dart';
//
// import 'package:turfbooking/view/widget_refractor/logo_refractor.dart';
// import '../controller/peyment_controller.dart';
// import 'booking_details.dart';
//
// class PeyNow extends StatelessWidget {
//   int i = 0;
//
// final int selectedIndex;
// final DateTime selectedDate;
// final String item;
// final int amount;
//
// PeyNow({
// required this.selectedDate,
// required this.selectedIndex,
// required this.item,
// required this.amount,});
// //
//   @override
//   Widget build(BuildContext context) {
//     PeymentProvider provider = Provider.of<PeymentProvider>(context);
//
//     return Scaffold(
//       body: SafeArea(
//         top: true,
//         child: Center(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Kick_off_Logo(60),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: MaterialButton(
//                   minWidth: double.infinity,
//                   shape: ContinuousRectangleBorder(),
//                   height: 60,
//                   color: Colors.green,
//                   onPressed: () {
//                     GlobalData.onPaidint.add(selectedIndex);
//                     GlobalData.onPaiddate.add(selectedDate);
//                     print(GlobalData.onPaiddate);
//                     print(GlobalData.onPaiddate);
//
//                     showDialog(
//                       context: context,
//                       builder: (context) => alertbox(context, provider),
//                     );
//                   },
//                   child: Text(
//                     "Pay Now",
//                     style:
//                         GoogleFonts.oswald(fontSize: 30, color: Colors.white),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   alertbox(BuildContext context, PeymentProvider provider) {
//     return AlertDialog(
//       content: Container(
//         width: 400,
//         height: 300,
//         child: Center(
//           child: LottieBuilder.asset(
//             "assets/animations/succesfull2.json",
//             repeat: false,
//           ),
//         ),
//       ),
//       actions: [
//         MaterialButton(
//           onPressed: () {
//             provider.setPaymentSuccessful(true);
//             Navigator.pushReplacement(context,
//                 MaterialPageRoute(builder: (context) => Bottom_Nav_Screen()));
//           },
//           child: Text('ok'),
//         ),
//       ],
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class PeyNow extends StatelessWidget {
//   final int selectedIndex;
//   final DateTime selectedDate;
//   final String item;
//   final int amount;
//
//   PeyNow({
//     required this.selectedDate,
//     required this.selectedIndex,
//     required this.item,
//     required this.amount,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     _saveBookingDetails(selectedDate, selectedIndex, item, amount);
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Pey Now'),
//       ),
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text('Selected Date: ${selectedDate.toString()}'),
//               Text('Selected Index: $selectedIndex'),
//               Text('Item: $item'),
//               Text('Amount: $amount'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Future<void> _saveBookingDetails(
//       DateTime selectedDate,
//       int selectedIndex,
//       String item,
//       int amount,
//       ) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setString('selectedDate', selectedDate.toString());
//     await prefs.setInt('selectedIndex', selectedIndex);
//     await prefs.setString('item', item);
//     await prefs.setInt('amount', amount);
//   }
// }
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:turfbooking/modal/select_time_date.dart';
import 'package:turfbooking/view/booking_details.dart';
import 'package:turfbooking/view/widget_refractor/logo_refractor.dart';

import '../controller/peyment_controller.dart';
import 'bottom_nav_screen.dart';

class PeyNow extends StatelessWidget {
  final int selectedIndex;
  final DateTime selectedDate;
  final String item;
  final int amount;

  PeyNow({
    required this.selectedDate,
    required this.selectedIndex,
    required this.item,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    PeymentProvider provider = Provider.of<PeymentProvider>(context);
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Kick_off_Logo(60),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  minWidth: double.infinity,
                  shape: ContinuousRectangleBorder(),
                  height: 60,
                  color: Colors.green,
                  onPressed: () async {
                    GlobalData.onPaidint.add(selectedIndex);
                    GlobalData.onPaiddate.add(selectedDate);
                    print(GlobalData.onPaiddate);
                    print(GlobalData.onPaiddate);
                    await _saveBookingDetails(selectedDate, selectedIndex, item, amount);
                    showDialog(
                      context: context,
                      builder: (context) => _buildAlertDialog(context,provider),
                    );
                  },
                  child: Text(
                    "Pay Now",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _saveBookingDetails(DateTime selectedDate, int selectedIndex, String item, int amount) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('selectedDate', selectedDate.toString());
    await prefs.setInt('selectedIndex', selectedIndex);
    await prefs.setString('item', item);
    await prefs.setInt('amount', amount);
  }

  Widget _buildAlertDialog(BuildContext context, PeymentProvider provider) {
    return AlertDialog(
      content: Container(
        width: 400,
        height: 300,
        child: Center(
          child: LottieBuilder.asset("assets/animations/succesfull2.json",
            repeat: false,
          ),
        ),
      ),
      actions: [
        MaterialButton(
          onPressed: () {
            provider.setPaymentSuccessful(true);
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) =>Bottom_Nav_Screen()));
          },
          child: Text('OK'),
        ),
      ],
    );
  }
}
