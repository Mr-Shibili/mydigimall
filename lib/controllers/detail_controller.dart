import 'package:get/get.dart';

class DetailServiceController extends GetxController {
  RxString selectedItem = 'Option 1'.obs;
  List<String> dropdownItems = ['Option 1', 'Option 2', 'Option 3'];

  void selectItem(value) {
    selectedItem = value;
  }
}
