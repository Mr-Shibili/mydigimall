import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/constants.dart';
import '../../detail_view/dertail_services_page.dart';

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
        Get.to(ServiceDetailPage());
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 40,
            child: CircleAvatar(
              radius: 38,
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
