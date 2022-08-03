import 'dart:developer';

import 'package:flutter/material.dart';

class DispararEvento extends ValueNotifier{
  
  DispararEvento() : super(null);

  void dispararPush(){
    //dispara um push notification no firebase
    notifyListeners();
  }
}