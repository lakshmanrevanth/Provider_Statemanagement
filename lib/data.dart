import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DataProvider extends ChangeNotifier {
  int count = 0;

  void changecountfun() {
    count++;
    notifyListeners();
  }
}
