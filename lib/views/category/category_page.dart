import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_digi_mall/constants/constants.dart';
import 'package:my_digi_mall/views/home/widgets/item_service.dart';
import 'package:my_digi_mall/views/service_list/service_list_page.dart';

import '../common/widgets/search_field.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xfff1f1f6),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          const Icon(
            Icons.location_on_outlined,
            color: Colors.red,
          ),
          DropdownButton<String>(
            iconEnabledColor: Colors.red,
            padding: const EdgeInsets.all(10),
            style: Theme.of(context).textTheme.titleSmall,
            hint: const Text('Kozhikode'),
            underline: Container(),
            onChanged: (String? newValue) {
              // Implement your logic here when a dropdown item is selected
              print('Selected: $newValue');
            },
            items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            height: size.height * 0.05,
            child: CustomSearchField(),
          ),
        ),
        SizedBox(
          height: size.height * 0.18,
          child: ListView.builder(
            itemCount: 20,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(13.0),
                child: ItemService(size: size),
              );
            },
          ),
        ),
        Container(
          width: double.infinity,
          height: size.height * 0.8,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40), topLeft: Radius.circular(40)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  khight,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Discover The Best Electronics',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  khight,
                  Expanded(
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 0.8,
                              crossAxisCount: 2,
                              mainAxisSpacing: 8,
                              crossAxisSpacing: 8),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: GestureDetector(
                            onTap: () {
                              Get.to(ServiceListPage());
                              print('working');
                            },
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Container(
                                  height: 400,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          spreadRadius: 4,
                                          blurRadius: 4,
                                          // changes x,y position of shadow
                                        ),
                                      ],
                                      color: const Color(0xfff2f2f2),
                                      borderRadius: BorderRadius.circular(17)),
                                ),
                                Image.asset(
                                  'assets/gaming.png',
                                  height: size.height * .2,
                                  width: size.width * .2,
                                ),
                                Positioned(
                                  bottom: 0,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    padding: const EdgeInsets.all(8),
                                    height: size.height * .08,
                                    width: size.width * .41,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(17),
                                          bottomRight: Radius.circular(17),
                                        )),
                                    child: Text(
                                      'Electronics',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ]),
          ),
        )
      ])),
    );
  }
}
