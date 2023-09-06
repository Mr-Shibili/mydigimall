import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/constants.dart';
import '../../category/category_page.dart';

class ItemService extends StatelessWidget {
  const ItemService({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(const CategoryPage());
      },
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 35,
            child: CircleAvatar(
              radius: 33,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/imagebg.jpg'),
            ),
          ),
          khight,
          Text('Electronics')
        ],
      ),
    );
  }
}
