// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:turfbooking/presentation/rentitem_screen/view/turf_shopings.dart';
//
//
// class CartPage extends StatelessWidget {
//   final String image;
//   final String itemName;
//   final String itemPrice;
//   final String selectedSize;
//   final int quantity;
//
//   CartPage({
//     required this.image,
//     required this.itemName,
//     required this.itemPrice,
//     required this.selectedSize,
//     required this.quantity,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(automaticallyImplyLeading: false,
//
//         title: Text("Cart"),
//       ),
//       body: ListView(
//         padding: EdgeInsets.all(20.0),
//         children: [
//           Card(
//             elevation: 2,
//             child: ListTile(
//               leading: Image(image: AssetImage(image)),
//               title: Text(itemName),
//               subtitle: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("Price: $itemPrice"),
//                   Text("Size: $selectedSize"),
//                   Text("Quantity: $quantity"),
//                 ],
//               ),
//               trailing: MaterialButton(
//                 shape: StadiumBorder(),
//                 height: 40,
//                 color: Colors.green,
//                 onPressed: () {
//                   // Show alert dialog
//                   showDialog(
//                     context: context,
//                     builder: (BuildContext context) {
//                       return AlertDialog(
//                         title: Text("Success"),
//                         content: Text("Your booking is successful!"),
//                         actions: <Widget>[
//                           TextButton(
//                             onPressed: () {
//                                 Navigator.pop(context);
//                             },
//                             child: Text("OK"),
//                           ),
//                         ],
//                       );
//                     },
//                   );
//                 },
//                 child: Text(
//                   "Book Now",
//                   style: GoogleFonts.oswald(fontSize: 20, color: Colors.white),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartPage extends StatelessWidget {
  final String image;
  final String itemName;
  final String itemPrice;
  final String selectedSize;
  final int quantity;

  CartPage({
    required this.image,
    required this.itemName,
    required this.itemPrice,
    required this.selectedSize,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Cart"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          Card(
            elevation: 2,
            child: ListTile(
              leading: Image(image: AssetImage(image)),
              title: Text(itemName),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Price: $itemPrice"),
                  Text("Size: $selectedSize"),
                  Text("Quantity: $quantity"),
                ],
              ),
              trailing: MaterialButton(
                shape: StadiumBorder(),
                height: 40,
                color: Colors.green,
                onPressed: () async {
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  List<String> cartItems = prefs.getStringList('cartItems') ?? [];
                  cartItems.add('Item: $itemName, Size: $selectedSize, Quantity: $quantity');
                  prefs.setStringList('cartItems', cartItems);

                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Success"),
                        content: Text("Your booking is successful!"),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("OK"),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text(
                  "Book Now",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
