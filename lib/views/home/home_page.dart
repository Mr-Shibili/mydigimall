import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../constants/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('MYDIGIMALL'),
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(
                height: 250,
                child: DrawerHeader(
                    child: Column(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.yellow,
                      radius: 60,
                    ),
                    khight,
                    Text(
                      "Steve jobs",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'Mobile',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                )),
              ),
              CustomBlueButton(
                  icon: const Icon(
                    Iconsax.home_24,
                    color: Colors.white,
                  ),
                  onTap: () {},
                  text: 'Home'),
              khight,
              CustomBlueButton(
                  icon: const Icon(
                    Iconsax.user,
                    color: Colors.white,
                  ),
                  onTap: () {},
                  text: 'Feedback'),
              khight,
              CustomBlueButton(
                  icon: const Icon(
                    Iconsax.setting,
                    color: Colors.white,
                  ),
                  onTap: () {},
                  text: 'Settings'),
              Spacer(),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: () {}, child: const Text('Logout')),
                  const Text('Version 3.21.0')
                ],
              ),
            ],
          ),
        ),
      ),
      body: const SafeArea(child: Placeholder()),
    );
  }
}

class CustomBlueButton extends StatelessWidget {
  const CustomBlueButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });
  final Icon icon;
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.lightBlue, borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        onTap: onTap,
        leading: icon,
        title: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
