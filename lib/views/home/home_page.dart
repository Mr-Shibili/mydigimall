import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../constants/constants.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  late ScrollController scrollController;
  late bool isScrolled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text('MYDIGIMALL'),
          actions: [
            CircleAvatar(
              backgroundColor: Colors.amber,
            ),
            kwidth
          ],
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        // Color.fromARGB(255, 20, 3, 248).withOpacity(1),
                        // Colors.purple.withOpacity(0.6)
                        Color(0xff1749f9), Color(0x00f91717)
                      ],
                      stops: [
                        0.1,
                        1
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Our Services',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              khight20,
              GridView.builder(
                padding: EdgeInsets.all(0),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, mainAxisSpacing: 4, crossAxisSpacing: 4),
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        minRadius: 40,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(
                              'https://cdn-icons-png.flaticon.com/128/3362/3362661.png'),
                          minRadius: 38,
                        ),
                      ),
                      khight,
                      Text('Electronics')
                    ],
                  );
                },
              )
            ],
          ),
        ));
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
