import 'package:flutter/material.dart';

class TextProvider extends ChangeNotifier{
  String add = '';

  TextEditingController textcontroller = TextEditingController();

    void datas() {
      add = textcontroller.text;
      notifyListeners();
  }
}