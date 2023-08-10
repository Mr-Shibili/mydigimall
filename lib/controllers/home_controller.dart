import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late ScrollController scrollController;
  late bool isScrolled = false;

  void initState() {
    scrollController = ScrollController();
    scrollController.addListener(handleScroll);
  }

  void handleScroll() {
    if (scrollController.offset > 50) {
      if (!isScrolled) {
        isScrolled = true;
      }
    } else {
      if (isScrolled) {
        isScrolled = false;
      }
    }
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
