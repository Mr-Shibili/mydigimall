import 'package:flutter/material.dart';
import 'package:my_digi_mall/constants/constants.dart';
import 'package:my_digi_mall/views/common/widgets/drop_down.dart';

import '../common/widgets/search_field.dart';

class ServiceListPage extends StatelessWidget {
  const ServiceListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          SizedBox(
              height: size.height * .01,
              width: size.width * .5,
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: CustomSearchField(),
              )),
          kwidth
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: size.height * .40,
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Positioned(
                  child: Image.asset(
                    'assets/imagebg.jpg',
                    fit: BoxFit.cover,
                    height: size.height * .35,
                    width: double.infinity,
                  ),
                ),
                Positioned(
                    top: 130,
                    left: 25,
                    child: SizedBox(
                      width: size.width * .6,
                      child: Text(
                        'Computer services & electronics',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    )),
                Positioned(
                    bottom: 15,
                    child: SizedBox(
                        width: size.width * .8, child: CustomDropDown())),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                  padding: EdgeInsets.all(0),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 135,
                      child: Row(
                        children: [
                          Image.asset('assets/imagebg.jpg'),
                          kwidth,
                          Column(
                            children: [
                              Text('NAme'),
                              khight,
                              Row(
                                children: [
                                  Icon(Icons.location_on),
                                  Text('data')
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text('5'),
                                  Icon(Icons.star),
                                  Text('reviews'),
                                  khight
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: 20),
            ),
          )
        ]),
      ),
    );
  }
}
