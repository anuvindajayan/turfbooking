import 'package:flutter/material.dart';

class PasswordVisibleController extends ChangeNotifier{
  var visible=true;
  var visible2=true;
  var visible3=true;

  TapVisible(){
    visible=!visible;
    notifyListeners();
  }
  TapVisible2(){
    visible2=!visible2;
    notifyListeners();
  }
  TapVisible3(){
    visible3=!visible3;
    notifyListeners();
  }
}