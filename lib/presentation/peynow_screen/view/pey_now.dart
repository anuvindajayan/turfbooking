
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:turfbooking/respository/item_booking_screen/model/select_time_date.dart';
import 'package:turfbooking/presentation/booking_details/view/booking_details.dart';
import 'package:turfbooking/global_widgets/logo_refractor.dart';

import '../controller/peyment_controller.dart';
import '../../bottom_nav_screen/view/bottom_nav_screen.dart';

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
