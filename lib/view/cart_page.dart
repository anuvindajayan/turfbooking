import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String selectedSize;
  final int quantity;

  CartPage({
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Item Name: $itemName',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Price: $itemPrice',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Size: $selectedSize',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Quantity: $quantity',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement your checkout logic here
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Checkout"),
                      content: Text("Your order has been placed."),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {if(quantity==0)
                            Navigator.of(context).pop();
                          },
                          child: Text("OK"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Checkout'),
            ),
          ],
        ),
      ),
    );
  }
}