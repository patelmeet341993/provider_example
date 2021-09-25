import 'package:flutter/material.dart';

class MyData extends ChangeNotifier
{

  int _count=0;

  int get count => _count;

  set count(int value) {
    _count = value;
  }

  void incrementCount(){
    _count++;
    notifyListeners();
  }

}