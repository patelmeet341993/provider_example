import 'package:flutter/material.dart';

class ProfileData extends ChangeNotifier{

  String _url="https://www.pinkvilla.com/files/styles/app-section/public/murder_mystery_2.jpeg?itok=7p8P5H3";

  String get url => _url;

  set url(String value) {
    _url = value;
    notifyListeners();
  }

  String _name="abc";

  String get name => _name;

  set name(String value) {
    _name = value;
    notifyListeners();
  }


  void changeUrl(String url)
  {
    this._url=url;
      notifyListeners();
  }

  void changeName(String name)
  {
    this._name=name;
    notifyListeners();
  }


}