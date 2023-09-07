import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_digi_mall/constants/constants.dart';
import 'package:my_digi_mall/controllers/otp_controller.dart';
import 'package:my_digi_mall/views/common/widgets/otp_box.dart';
import 'package:my_digi_mall/views/common/widgets/round_button.dart';
import 'package:my_digi_mall/views/profile/profile_page.dart';

class VerifyOtp extends StatelessWidget {
  String phoneNumber;
  VerifyOtp(this.phoneNumber, {super.key});

  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  String? otp;

  final OtpController _controller = OtpController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: SizedBox(
            height: size.height * 0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                khight40,
                Text(
                  'Enter Verification Code',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                khight40,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    OtpBox(focus: true, controller: _fieldOne),
                    kwidth,
                    OtpBox(focus: true, controller: _fieldTwo),
                    kwidth,
                    OtpBox(focus: true, controller: _fieldThree),
                    kwidth,
                    OtpBox(focus: true, controller: _fieldFour),
                    kwidth
                  ],
                ),
                khight40,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn't get code?",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Resend Code',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(color: Colors.blue),
                        ))
                  ],
                ),
                khight40,
                khight40,
                Row(
                  children: [
                    const Spacer(),
                    RoundButton(
                      onPress: () {
                        if (_fieldOne.text.isNotEmpty &&
                            _fieldTwo.text.isNotEmpty &&
                            _fieldThree.text.isNotEmpty &&
                            _fieldFour.text.isNotEmpty) {
                          _controller.verifyOTP(phoneNumber,
                              "${_fieldOne.text}${_fieldTwo.text}${_fieldThree.text}${_fieldFour.text}");
                        }
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
