import 'package:flutter/material.dart';

class PeymentProvider extends ChangeNotifier {
  bool _isPaymentSuccessful = false;

  bool get isPaymentSuccessful => _isPaymentSuccessful;

  void setPaymentSuccessful(bool value) {
    _isPaymentSuccessful = value;
    notifyListeners();
  }
}