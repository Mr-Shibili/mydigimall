import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_digi_mall/constants/constants.dart';
import 'package:my_digi_mall/views/home/widgets/item_service.dart';

class ServiceDetailPage extends StatelessWidget {
  const ServiceDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xfff1f1f6),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          Icon(
            Icons.location_on_outlined,
            color: Colors.red,
          ),
          DropdownButton<String>(
            iconEnabledColor: Colors.red,
            padding: EdgeInsets.all(10),
            style: Theme.of(context).textTheme.titleSmall,
            hint: Text('Kozhikode'),
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
            child: TextField(
              style: TextStyle(fontSize: 16),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  suffixIcon: Icon(
                    Iconsax.search_normal,
                    color: Color.fromARGB(255, 173, 160, 243),
                  ),
                  hintText: 'Search...',
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 173, 160, 243))),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 173, 160, 243)),
                      borderRadius: BorderRadius.circular(6))),
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.2,
          child: ListView.builder(
            itemCount: 20,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: ItemService(size: size),
              );
            },
          ),
        ),
        Container(
          width: double.infinity,
          height: size.height * 0.8,
          decoration: BoxDecoration(
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
                  Text(
                    'Discover The Best Electronics',
                    style: Theme.of(context).textTheme.titleSmall,
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
                          child: Stack(
                            children: [
                              Container(
                                height: 400,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        spreadRadius: 4,
                                        blurRadius: 4,
                                        offset: Offset(0,
                                            0), // changes x,y position of shadow
                                      ),
                                    ],
                                    color: Color(0xfff2f2f2),
                                    borderRadius: BorderRadius.circular(17)),
                              ),
                              Positioned(
                                left: 40,
                                child: Image.asset(
                                  'assets/gaming.png',
                                  height: size.height * .2,
                                  width: size.width * .2,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.all(8),
                                  height: size.height * .08,
                                  width: size.width * .41,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(17),
                                        bottomRight: Radius.circular(17),
                                      )),
                                  child: Text(
                                    'Electronics',
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                ),
                              )
                            ],
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
