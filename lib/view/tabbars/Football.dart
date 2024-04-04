import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:turfbooking/modal/select_time_date.dart';
import 'package:turfbooking/presentation/turf_peymentscreen/view/turf_peyment_screen.dart';

class Turf_Football extends StatefulWidget {
  @override
  State<Turf_Football> createState() => _Turf_FootballState();
}

class _Turf_FootballState extends State<Turf_Football> {
  var item = "football";
  var selectedDate;
  var selectedTime;
  var selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Select Your Date",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.green),
            ),
            SizedBox(
              height: 20,
            ),
            DatePicker(
              height: 100,
              width: 100,
              dateTextStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              monthTextStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              DateTime.now(),
              initialSelectedDate: DateTime.now(),
              selectionColor: Colors.green,
              selectedTextColor: Colors.white,
              onDateChange: (date) {
                // New date selected
                setState(() {
                  selectedDate = date;
                });
              },
            ),
            Divider(
              height: 80,
              thickness: 1,
              color: Colors.green,
            ),
            Text(
              "Select Your Slot",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.green),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 70,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 16,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.green),
                              borderRadius: BorderRadius.circular(10),
                              color: GlobalData.onPaidint
                                          .contains(selectedIndex) &&
                                      GlobalData.onPaiddate
                                          .contains(selectedDate)
                                  ? selectedIndex == index
                                      ? Colors.red
                                      : Colors.white
                                  : selectedIndex == index
                                      ? Colors.green
                                      : Colors.white),
                          child: Text(GlobalData.times[index])),
                    );
                  }),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              height: 50,
              thickness: 1,
              color: Colors.green,
            ),
            Container(
              height: 55,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedIndex < 9 ? "₹ 1000/hr" : "₹ 1200/hr",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                  Visibility(
                    visible: GlobalData.onPaidint.contains(selectedIndex) &&
                            GlobalData.onPaiddate.contains(selectedDate)
                        ? false
                        : true,
                    child: MaterialButton(
                      height: 70,
                      color: Colors.green,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TurfPeymentsScreen(
                                      selectedIndex: selectedIndex,
                                      selectedDate: selectedDate,
                                      item: 'Football',
                                    )));
                      },
                      child: Text(
                        "  Next  ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            letterSpacing: 2),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.green,
              height: 50,
              thickness: 1,
            )
          ],
        ),
      ),
    );
  }
}
