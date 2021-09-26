import 'package:flutter/material.dart';

class ProfileData extends ChangeNotifier{


  String _name="abc";

  String get name => _name;

  set name(String value) {
    _name = value;
    notifyListeners();
  }

  void changeName(String name)
  {
    this._name=name;
    notifyListeners();
  }


}