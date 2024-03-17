import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:turfbooking/modal/select_time_date.dart';
import 'package:turfbooking/view/bottom_nav_screen.dart';
import 'package:turfbooking/view/tabbars/Football.dart';
import 'package:turfbooking/view/widget_refractor/logo_refractor.dart';
import '../controller/peyment_controller.dart';

class PeyNow extends StatelessWidget {
  int i = 0;
  final int selectedIndex;
  final DateTime selectedDate;

  PeyNow({required this.selectedDate, required this.selectedIndex});

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
                  onPressed: () {
                    GlobalData.onPaidint.add(selectedIndex);
                    GlobalData.onPaiddate.add(selectedDate);
                    print(GlobalData.onPaiddate);
                    print(GlobalData.onPaiddate);

                    showDialog(
                      context: context,
                      builder: (context) => alertbox(context, provider),
                    );
                  },
                  child: Text(
                    "Pay Now",
                    style:
                        GoogleFonts.oswald(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  alertbox(BuildContext context, PeymentProvider provider) {
    return AlertDialog(
      content: Container(
        width: 400,
        height: 300,
        child: Center(
          child: LottieBuilder.asset(
            "assets/animations/succesfull2.json",
            repeat: false,
          ),
        ),
      ),
      actions: [
        MaterialButton(
          onPressed: () {
            provider.setPaymentSuccessful(true);
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => Bottom_Nav_Screen()));
          },
          child: Text('ok'),
        ),
      ],
    );
  }
}
