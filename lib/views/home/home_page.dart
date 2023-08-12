import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_digi_mall/views/detail_view/dertail_services_page.dart';
import 'package:my_digi_mall/views/home/widgets/drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_digi_mall/views/home/widgets/item_service.dart';
import '../../constants/constants.dart';
import '../../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    final size = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text('MYDIGIMALL'),
          actions: const [
            CircleAvatar(
              backgroundColor: Colors.amber,
            ),
            kwidth
          ],
        ),
        drawer: const DrawerPage(),
        body: SingleChildScrollView(
          controller: controller.scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height * 0.35,
                decoration: const BoxDecoration(
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: DropdownButton(
                                  hint: const Text('Kozhikode'),

                                  items: const [
                                    DropdownMenuItem(
                                      value: "menuone",
                                      child: Text(
                                        "Kozhikode",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    )
                                  ],
                                  onChanged: (value) {},
                                  isExpanded:
                                      true, //make true to take width of parent widget
                                  underline: Container(), //empty line
                                  style: const TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              )),
                        ),
                        khight20,
                        CarouselSlider(
                          options: CarouselOptions(
                              autoPlay: true,
                              height: 115.0,
                              aspectRatio: 2,
                              viewportFraction: 1,
                              scrollPhysics: const BouncingScrollPhysics()),
                          items:
                              ['assets/imagebg.jpg', 'assets/ad.jpg'].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  width: size.width,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(i)),
                                      borderRadius: BorderRadius.circular(20)),
                                );
                              },
                            );
                          }).toList(),
                        ),
                        khight
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Our Services',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              khight20,
              GridView.builder(
                padding: const EdgeInsets.all(0),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, mainAxisSpacing: 4, crossAxisSpacing: 4),
                itemCount: 9,
                itemBuilder: (context, index) {
                  return ItemService(size: size);
                },
              ),
              Center(
                child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(horizontal: 80),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Text(
                      'View More',
                      style: Theme.of(context).textTheme.titleSmall,
                    )),
              )
            ],
          ),
        ));
  }
}
