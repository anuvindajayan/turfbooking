// import 'package:flutter/material.dart';
//
// class CartPage extends StatelessWidget {
//   final String itemName;
//   final String itemPrice;
//   final String selectedSize;
//   final int quantity;
//
//   CartPage({
//     required this.itemName,
//     required this.itemPrice,
//     required this.selectedSize,
//     required this.quantity,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Cart"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Item Name: $itemName',
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Price: $itemPrice',
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Size: $selectedSize',
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Quantity: $quantity',
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Implement your checkout logic here
//                 showDialog(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return AlertDialog(
//                       title: Text("Checkout"),
//                       content: Text("Your order has been placed."),
//                       actions: <Widget>[
//                         TextButton(
//                           onPressed: () {if(quantity==0)
//                             Navigator.of(context).pop();
//                           },
//                           child: Text("OK"),
//                         ),
//                       ],
//                     );
//                   },
//                 );
//               },
//               child: Text('Checkout'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// // }
// import 'package:flutter/material.dart';
//
// class CartPage extends StatelessWidget {
//   final String itemName;
//   final String itemPrice;
//   final String selectedSize;
//   final int quantity;
//
//   CartPage({
//     required this.itemName,
//     required this.itemPrice,
//     required this.selectedSize,
//     required this.quantity,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Cart"),
//       ),
//       body: Center(
//         child: Container(
//           padding: EdgeInsets.all(20.0),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(12.0),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.5),
//                 spreadRadius: 5,
//                 blurRadius: 7,
//                 offset: Offset(0, 3),
//               ),
//             ],
//           ),
//           child: Card(
//             elevation: 0,
//             child: Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   ListTile(
//                     title: Text(
//                       'Item Name:',
//                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                     subtitle: Text(
//                       itemName,
//                       style: TextStyle(fontSize: 16),
//                     ),
//                   ),
//                   ListTile(
//                     title: Text(
//                       'Price:',
//                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                     subtitle: Text(
//                       itemPrice,
//                       style: TextStyle(fontSize: 16),
//                     ),
//                   ),
//                   ListTile(
//                     title: Text(
//                       'Size:',
//                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                     subtitle: Text(
//                       selectedSize,
//                       style: TextStyle(fontSize: 16),
//                     ),
//                   ),
//                   ListTile(
//                     title: Text(
//                       'Quantity:',
//                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                     subtitle: Text(
//                       quantity.toString(),
//                       style: TextStyle(fontSize: 16),
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Center(
//                     child: ElevatedButton(
//                       onPressed: () {
//                         // Implement your checkout logic here
//                         showDialog(
//                           context: context,
//                           builder: (BuildContext context) {
//                             return AlertDialog(
//                               title: Text("Checkout"),
//                               content: Text("Your order has been placed."),
//                               actions: <Widget>[
//                                 TextButton(
//                                   onPressed: () {
//                                     if (quantity == 0) Navigator.of(context).pop();
//                                   },
//                                   child: Text("OK"),
//                                 ),
//                               ],
//                             );
//                           },
//                         );
//                       },
//                       child: Text('Checkout'),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turfbooking/view/turf_shopings.dart';

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
                onPressed: () {
                  // Show alert dialog
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Success"),
                        content: Text("Your booking is successful!"),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                             Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Turf_Shoppings()), (route) => false);
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
                  style: GoogleFonts.oswald(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
