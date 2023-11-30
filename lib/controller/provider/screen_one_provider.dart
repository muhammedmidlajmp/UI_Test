import 'package:flutter/material.dart';

class TabSelectionProvider extends ChangeNotifier {
  int _selectedTabIndex = 0;

  int get selectedTabIndex => _selectedTabIndex;

  void selectTab(int index) {
    _selectedTabIndex = index;
    notifyListeners();
  }
}
