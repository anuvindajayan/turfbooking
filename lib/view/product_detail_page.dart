import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'cart_page.dart';

class ProductDetailsPage extends StatefulWidget {
  final String image;
  final String itemName;
  final String itemPrice;

  ProductDetailsPage({required this.image, required this.itemName, required this.itemPrice});

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  String selectedSize = 'S';
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(widget.image),
          ),
          SizedBox(height: 20),
          Text(
            widget.itemName,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            widget.itemPrice,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          // Size selection dropdown
          DropdownButton<String>(
            value: selectedSize,
            onChanged: (String? newValue) {
              setState(() {
                selectedSize = newValue!;
              });
            },
            items: <String>['S', 'M', 'L', 'XL']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          SizedBox(height: 20),
          // Quantity input field
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    if (quantity > 0) {
                      quantity--;
                    }
                  });
                },
                icon: Icon(Icons.remove),
              ),
              Text(
                '$quantity',
                style: TextStyle(fontSize: 20),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    quantity++;
                  });
                },
                icon: Icon(Icons.add),
              ),
            ],
          ),
          // Add to cart button
          ElevatedButton(
            onPressed: () {
              if(quantity!=0){
              // Navigates to cart page with selected quantity details
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartPage(
                    itemName: widget.itemName,
                    itemPrice: widget.itemPrice,
                    selectedSize: selectedSize,
                    quantity: quantity,
                  ),
                ),
              );}
            },
            child: Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}




// class ProductDetailsPage extends StatelessWidget {
//   final String image;
//   final String itemName;
//   final String itemPrice;
//
//   ProductDetailsPage({required this.image, required this.itemName, required this.itemPrice,});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Details"),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image(
//             image: AssetImage(image),
//           ),
//           SizedBox(height: 20),
//           Text(
//             itemName,
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//           Text(
//             itemPrice,
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//           // Add more details or actions here as needed
//         ],
//       ),
//     );
//   }
// }
