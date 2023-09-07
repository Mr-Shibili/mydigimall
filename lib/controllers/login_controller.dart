import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_digi_mall/model/login_response.dart';

import '../api/api_connect.dart';
import '../views/auth/verify_mobile.dart';

class LoginController extends GetxController {
  var loginResponse = <LoginResponse>[].obs;
  var loading = false.obs;

  final ApiConnect _provider = ApiConnect();

  requestOTP(String phoneNumber) async {
    loading(true);
    var response = await _provider.requestPost(<String, dynamic>{
      'user_phone': phoneNumber,
    }, "Login/user_login");
    if (!response.status.hasError) {
      Get.to(VerifyOtp(phoneNumber));
    } else {
      LoginResponse loginResponse = LoginResponse.fromJson(response.body);
      Get.snackbar('Failed', loginResponse.message,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
    }
    loading(false);
  }
}
