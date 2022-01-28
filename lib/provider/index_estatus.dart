import 'package:flutter/material.dart';

class IndexEstatusProvider with ChangeNotifier {
  bool _showMenu = true;
  bool get showMenu => _showMenu;
  set showMenu(bool val) {
    _showMenu = val;
    notifyListeners();
  }

  void init() async {
    notifyListeners();
  }
}
