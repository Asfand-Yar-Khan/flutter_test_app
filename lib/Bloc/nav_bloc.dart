import 'dart:developer';

import 'package:flutter/material.dart';

import '../src/home/view/home.dart';
import '../src/profile/view/prifle.dart';
import '../src/save/view/save.dart';
import '../src/search/view/search.dart';

class NavBloc extends ChangeNotifier {
  NavBloc() {
    print("Nav bloc working...");
  }

  // attributes
  int activeIndex = 0;
  bool colorFul = false;
  PageController navPageController = PageController(initialPage: 0);
  List<Widget> navWidgts = const [Home(), Search(), Save(), Profile()];

  // methods
  changeIndex(int index) {
    log("Changing index...");
    activeIndex = index;
    navPageController.animateToPage(activeIndex,
        duration: const Duration(milliseconds: 400), curve: Curves.easeOutQuad);
    notifyListeners();
  }
}
