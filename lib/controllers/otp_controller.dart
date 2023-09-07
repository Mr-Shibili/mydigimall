import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_digi_mall/model/otp_response.dart';

import '../api/api_connect.dart';
import '../views/auth/verify_mobile.dart';
import '../views/profile/profile_page.dart';

class OtpController extends GetxController {
  var otpResponse = <OtpResponse>[].obs;
  var loading = false.obs;

  final ApiConnect _provider = ApiConnect();

  verifyOTP(String phoneNumber, String otp) async {
    loading(true);
    var response = await _provider.requestPost(<String, dynamic>{
      'user_phone': phoneNumber,
      'otp': otp,
    }, "Login/verify_otp");
    if (!response.status.hasError) {
      Get.to(const ProfilePage());
    } else {
      OtpResponse otpResponse = OtpResponse.fromJson(response.body);
      Get.snackbar('Failed', otpResponse.message,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
    }
    loading(false);
  }
}
