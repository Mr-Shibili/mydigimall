import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_digi_mall/constants/constants.dart';
import 'package:my_digi_mall/views/auth/verify_mobile.dart';
import '../common/widgets/round_button.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(30.0),
            child: SizedBox(
              height: size.height * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Image.asset('assets/Logo.png')),
                  khight40,
                  Text(
                    'Welcome\nBack',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  khight40,
                  TextFormField(
                    validator: (value) {
                      if (value!.length != 10) {
                        return 'Mobile Number must be of 10 digit';
                      } else {
                        return null;
                      }
                    },
                    style: Theme.of(context).textTheme.titleSmall,
                    decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: Colors.lightBlue),
                      ),
                      labelStyle: Theme.of(context).textTheme.bodyMedium,
                      hintStyle: Theme.of(context).textTheme.titleSmall,
                      fillColor: Colors.blue[400],
                      labelText: 'MOBILE NUMBER',
                      prefixText: '+91',
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  khight40,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sign in',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      RoundButton(
                        onPress: () {
                          Get.to(VerifyOtp());
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
