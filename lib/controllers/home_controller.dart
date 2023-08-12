import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late ScrollController scrollController;
  final isScrolled = false.obs;
  @override
  void onInit() {
    scrollController = ScrollController();
    scrollController.addListener(handleScroll);
    super.onInit();
  }

  void handleScroll() {
    if (scrollController.offset > 50) {
      if (!isScrolled.value) {
        isScrolled.value = true;
      }
    } else {
      if (isScrolled.value) {
        isScrolled.value = false;
      }
    }
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }
}
