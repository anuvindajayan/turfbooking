import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turfbooking/view/product_detail_page.dart'; // Import the details page

class Turf_Shoppings extends StatelessWidget {
  var images = [
    "assets/items/boots/41DCQQx4rCLB3.jpg",
    "assets/items/boots/41kef13iuALB3.jpg",
    "assets/items/boots/41mD-Qv91ULB2.jpg",
    "assets/items/boots/71l-WvvJU2L._SY695_.jpg",
    "assets/items/adidas_football_worldcup.png",
    "assets/items/football_png_sixteen.png",
    "assets/items/boots/jercys/41+VgH2990L._SX679_.jpg",
    "assets/items/boots/jercys/61hYJSUe7CL._SX679_.jpg",
    "assets/items/boots/jercys/51LCL8AQ9yL._SX679_.jpg",
    "assets/items/boots/jercys/619IAEVtDgL._SX679_.jpg",
    "assets/items/gloves/71jivV33yxL._AC_UL480_FMwebp_QL65_.webp",
    "assets/items/sockes/41AZ4XZjpGL._AC_SR320,400_.jpg"
  ];
  var items = [
    "Football Boots",
    "Football Boots",
    "Football Boots",
    "Football Boots",
    "Adidas football",
    "Adidas football",
    "Jercy",
    "Jercy",
    "Jercy",
    "Jercy",
    "G/keeper Gloves",
    "Sockes"
  ];
  var prices = [
    "799",
    "799",
    "799",
    "799",
    "999",
    "999",
    "599",
    "599",
    "599",
    "599",
    "499",
    "299"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Pre book Now",
          style: GoogleFonts.oswald(color: Colors.green),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.cart_badge_plus),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: GridView.builder(
          itemCount: 12,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 15,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Navigate to details page with name and price parameters
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailsPage(
                      itemName: items[index],
                      itemPrice: prices[index],
                      image: images[index],
                    ),
                  ),
                );
              },
              child: Container(
                child: Column(
                  children: [
                    Container(
                      height: 130,
                      width: 250,
                      child: Image(
                        image: AssetImage(images[index]),
                      ),
                    ),
                    Text(
                      items[index],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Price: ${prices[index]} "),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}




// class Turf_Shoppings extends StatelessWidget {
//   var images = [
//     "assets/items/boots/41DCQQx4rCLB3.jpg",
//     "assets/items/boots/41kef13iuALB3.jpg",
//     "assets/items/boots/41mD-Qv91ULB2.jpg",
//     "assets/items/boots/71l-WvvJU2L._SY695_.jpg",
//     "assets/items/adidas_football_worldcup.png",
//     "assets/items/football_png_sixteen.png",
//     "assets/items/boots/jercys/41+VgH2990L._SX679_.jpg",
//     "assets/items/boots/jercys/61hYJSUe7CL._SX679_.jpg",
//     "assets/items/boots/jercys/51LCL8AQ9yL._SX679_.jpg",
//     "assets/items/boots/jercys/619IAEVtDgL._SX679_.jpg",
//     "assets/items/gloves/71jivV33yxL._AC_UL480_FMwebp_QL65_.webp",
//     "assets/items/sockes/41AZ4XZjpGL._AC_SR320,400_.jpg"
//   ];
//   var items = [
//     "Football Boots",
//     "Football Boots",
//     "Football Boots",
//     "Football Boots",
//     "Adidas football",
//     "Adidas football",
//     "Jercy",
//     "Jercy",
//     "Jercy",
//     "Jercy",
//     "G/keeper Gloves",
//     "Sockes"
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(automaticallyImplyLeading: false,title: Text("Pre book Now",style: GoogleFonts.oswald(color: Colors.green),),
//         actions: [
//           IconButton(
//               onPressed: () {}, icon: Icon(CupertinoIcons.cart_badge_plus))
//         ],
//         backgroundColor: Colors.white,
//         elevation: 0,
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(15),
//         child: GridView.builder(
//             itemCount: 12,
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisSpacing: 15, mainAxisSpacing: 10, crossAxisCount: 2),
//             itemBuilder: (context, index) {
//               return Container(
//                 child: Column(children: [
//                   Container(
//                     height: 130,
//                     width: 250,
//                     child: Image(
//                       image: AssetImage(images[index]),
//                     ),
//                   ),
//                   Text(
//                     items[index],
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Text("Price:  799/ "),
//
//                     ],
//                   ),
//                 ]),
//               );
//             }),
//       ),
//     );
//   }
// }
