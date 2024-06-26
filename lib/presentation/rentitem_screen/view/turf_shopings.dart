import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turfbooking/presentation/product_details_page/view/product_detail_page.dart'; // Import the details page

class RentItemsScreen extends StatelessWidget {
  var images = [
    "assets/items/boots/41DCQQx4rCLB3.jpg",
    "assets/items/boots/41kef13iuALB3.jpg",
    "assets/items/boots/41mD-Qv91ULB2.jpg",
    "assets/items/boots/71l-WvvJU2L._SY695_.jpg",
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
    "Jercy",
    "Jercy",
    "Jercy",
    "Jercy",
    "G/keeper Gloves",
    "Sockes"
  ];
  var prices = [
    "49",
    "49",
    "49",
    "49",
    "49",
    "49",
    "49",
    "49",
    "49",
    "49",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_outlined)),
        title: Text(
          "Rent items",
          style: GoogleFonts.oswald(color: Colors.green),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: GridView.builder(
          itemCount: 10,
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.01),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 5), // changes position of shadow
                    ),
                  ],
                ),
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
