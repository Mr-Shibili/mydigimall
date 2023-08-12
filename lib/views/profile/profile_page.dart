import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_digi_mall/constants/constants.dart';
import 'package:my_digi_mall/views/auth/log_in_page.dart';
import 'package:my_digi_mall/views/home/home_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Get.off(const LogIn());
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
          )),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue[200],
              radius: 65,
              child: const CircleAvatar(
                backgroundColor: Colors.yellow,
                radius: 62,
              ),
            ),
            khight20,
            Text(
              "Steve jobs",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            khight20,
            Text(
              'Mobile',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            khight40,
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter name',
                hintStyle: Theme.of(context).textTheme.bodyLarge,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
            khight20,
            TextField(
              decoration: InputDecoration(
                  hintText: 'Mobile number',
                  hintStyle: Theme.of(context).textTheme.bodyLarge,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
          ],
        ),
      ))),
      bottomNavigationBar: InkWell(
        onTap: () {
          Get.to(const HomePage());
        },
        child: Container(
          color: Colors.lightBlue,
          height: size.height * 0.08,
          width: double.infinity,
          child: const Center(
              child: Text(
            'UPDATE',
            style: TextStyle(fontSize: 20, color: Colors.white),
          )),
        ),
      ),
    );
  }
}
