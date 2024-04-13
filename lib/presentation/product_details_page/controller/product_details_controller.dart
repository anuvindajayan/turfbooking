import 'package:flutter/material.dart';

class ProductDetailsController extends ChangeNotifier {
  String selectedSize = 'S';
  int quantity = 0;

  void setSize(String newSize) {
    selectedSize = newSize;
    notifyListeners();
  }

  void incrementQuantity() {
    quantity++;
    notifyListeners();
  }

  void decrementQuantity() {
    if (quantity > 0) {
      quantity--;
      notifyListeners();
    }
  }
}
