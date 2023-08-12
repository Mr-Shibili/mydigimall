import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constants/constants.dart';
import 'blue_button.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            const Spacer(),
            const Divider(),
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
    );
  }
}
