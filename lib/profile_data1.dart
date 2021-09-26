import 'package:flutter/material.dart';

class ProfileData1 extends ChangeNotifier{

  String _url="https://www.pinkvilla.com/files/styles/app-section/public/murder_mystery_2.jpeg?itok=7p8P5H3";

  String get url => _url;

  set url(String value) {
    _url = value;
    notifyListeners();
  }

  void changeUrl(String url)
  {
    this._url=url;
      notifyListeners();
  }




}