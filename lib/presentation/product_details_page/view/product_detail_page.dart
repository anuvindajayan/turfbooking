// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import '../../cart_page/view/cart_page.dart';
//
// class ProductDetailsPage extends StatefulWidget {
//   final String image;
//   final String itemName;
//   final String itemPrice;
//
//   ProductDetailsPage(
//       {required this.image, required this.itemName, required this.itemPrice});
//
//   @override
//   _ProductDetailsPageState createState() => _ProductDetailsPageState();
// }
//
// class _ProductDetailsPageState extends State<ProductDetailsPage> {
//   String selectedSize = 'S';
//   int quantity = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//         title: Padding(
//           padding: const EdgeInsets.only(left: 16.0),
//           // Adjust padding as needed
//           child: Text(
//             "Details",
//             style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12.0),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 2,
//                       blurRadius: 5,
//                       offset: Offset(0, 3), // changes position of shadow
//                     ),
//                   ],
//                 ),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(12.0),
//                   child: Image(
//                     image: AssetImage(widget.image),
//                     width: MediaQuery.of(context).size.width * 0.8,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 widget.itemName,
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 widget.itemPrice,
//                 style: TextStyle(fontSize: 20, color: Colors.grey),
//               ),
//               SizedBox(height: 20),
//               Container(
//                 padding: EdgeInsets.symmetric(horizontal: 12),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8),
//                   // Adjust border radius as needed
//                   border: Border.all(
//                     color: Colors.grey[400]!, // Specify border color
//                     width: 1, // Specify border width
//                   ),
//                 ),
//                 child: DropdownButton<String>(
//                   value: selectedSize,
//                   onChanged: (String? newValue) {
//                     if (newValue != null) {
//                       setState(() {
//                         selectedSize = newValue;
//                       });
//                     }
//                   },
//                   items: <String>['S', 'M', 'L', 'XL']
//                       .map<DropdownMenuItem<String>>((String value) {
//                     return DropdownMenuItem<String>(
//                       value: value,
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         // Adjust padding as needed
//                         child: Text(
//                           value,
//                           style: TextStyle(fontSize: 18),
//                         ),
//                       ),
//                     );
//                   }).toList(),
//                   isExpanded: true,
//                   // Makes the dropdown button expand to fill the available space
//                   underline: Container(),
//                   // Removes the default underline
//                   icon: Icon(Icons.arrow_drop_down),
//                   // Adds an icon next to the dropdown
//                   iconSize: 30,
//                   // Adjust icon size as needed
//                   iconEnabledColor: Colors.black,
//                   // Change icon color as needed
//                   elevation: 16,
//                   // Dropdown elevation
//                   style: TextStyle(
//                       fontSize: 18, color: Colors.black), // Dropdown text style
//                 ),
//               ),
//
//               SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       setState(() {
//                         if (quantity > 0) {
//                           quantity--;
//                         }
//                       });
//                     },
//                     borderRadius: BorderRadius.circular(20),
//                     // Adjust the border radius as needed
//                     child: Container(
//                       padding: EdgeInsets.all(8),
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color:
//                             Colors.green[400], // Customize the background color
//                       ),
//                       child: Icon(
//                         Icons.remove,
//                         color: Colors.black, // Customize the icon color
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 16),
//                   // Add space between the buttons and the text
//                   Text(
//                     '$quantity',
//                     style: TextStyle(fontSize: 20),
//                   ),
//                   SizedBox(width: 16),
//                   // Add space between the buttons and the text
//                   InkWell(
//                     onTap: () {
//                       setState(() {
//                         quantity++;
//                       });
//                     },
//                     borderRadius: BorderRadius.circular(20),
//                     // Adjust the border radius as needed
//                     child: Container(
//                       padding: EdgeInsets.all(8),
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color:
//                             Colors.green[400], // Customize the background color
//                       ),
//                       child: Icon(
//                         Icons.add,
//                         color: Colors.black, // Customize the icon color
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20),
//               MaterialButton(
//                 shape: StadiumBorder(),
//                 height: 60,
//                 color: Colors.green,
//                 onPressed: () {
//                   if (quantity != 0) {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => CartPage(
//                           image: widget.image,
//                           itemName: widget.itemName,
//                           itemPrice: widget.itemPrice,
//                           selectedSize: selectedSize,
//                           quantity: quantity,
//                         ),
//                       ),
//                     );
//                   }
//                 },
//                 child: Text(
//                   "Add To Cart",
//                   style: GoogleFonts.oswald(fontSize: 30, color: Colors.white),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';// Import the model
import '../../cart_page/view/cart_page.dart';
import '../controller/product_details_controller.dart';

class ProductDetailsPage extends StatelessWidget {
  final String image;
  final String itemName;
  final String itemPrice;

  ProductDetailsPage({
    required this.image,
    required this.itemName,
    required this.itemPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductDetailsController>(
      builder: (context, productDetails, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              // Adjust padding as needed
              child: Text(
                "Details",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image(
                        image: AssetImage(image),
                        width: MediaQuery.of(context).size.width * 0.8,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    itemName,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    itemPrice,
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.grey[400]!,
                        width: 1,
                      ),
                    ),
                    child: DropdownButton<String>(
                      value: productDetails.selectedSize,
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          productDetails.setSize(newValue);
                        }
                      },
                      items: <String>['S', 'M', 'L', 'XL']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        );
                      }).toList(),
                      isExpanded: true,
                      underline: Container(),
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 30,
                      iconEnabledColor: Colors.black,
                      elevation: 16,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          productDetails.decrementQuantity();
                        },
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green[400],
                          ),
                          child: Icon(
                            Icons.remove,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Text(
                        '${productDetails.quantity}',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(width: 16),
                      InkWell(
                        onTap: () {
                          productDetails.incrementQuantity();
                        },
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green[400],
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  MaterialButton(
                    shape: StadiumBorder(),
                    height: 60,
                    color: Colors.green,
                    onPressed: () {
                      if (productDetails.quantity != 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CartPage(
                              image: image,
                              itemName: itemName,
                              itemPrice: itemPrice,
                              selectedSize: productDetails.selectedSize,
                              quantity: productDetails.quantity,
                            ),
                          ),
                        );
                      }
                    },
                    child: Text(
                      "Add To Cart",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
