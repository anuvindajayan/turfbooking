import 'package:flutter/cupertino.dart';
import 'package:turfbooking/presentation/item_booking_screen/view/itembooking_screen.dart';

class TurfTabController extends ChangeNotifier {
  bool isLoading = false;
  List<String> tabList = ["Football", "Cricket", "Hockey", "Badminton"];
  String selectedTab = "Football";
  late Widget selectedIndex;

  var screens = [
    ItemBookingScreen(),ItemBookingScreen(),ItemBookingScreen(),ItemBookingScreen()
  ];

  TurfTabController() {
    initIndex();
  }

  void initIndex() {
    selectedIndex = screens[0];
  }

  void onTap({required int index}) {
    selectedTab = tabList[index];
    fetchData(index: index);
    notifyListeners();
  }

  void fetchData({required int index}) {
    selectedIndex = screens[index];
    notifyListeners();
  }
}
//
// class TurfFootball extends StatelessWidget {
//   // Your Football widget implementation
// }
//
// class TurfCricket extends StatelessWidget {
//   // Your Cricket widget implementation
// }
//
// class TurfHockey extends StatelessWidget {
//   // Your Hockey widget implementation
// }
//
// class TurfBadminton extends StatelessWidget {
//   // Your Badminton widget implementation
// }