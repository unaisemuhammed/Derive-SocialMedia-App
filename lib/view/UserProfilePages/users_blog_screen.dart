import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tripers/colors.dart' as colors;
import 'package:tripers/controller/getx_controller.dart';

import '../../instance.dart';

class UsersBlog extends StatelessWidget {
  UsersBlog({Key? key}) : super(key: key);

  final List<String> carouselImages = [
    'https://wallpapercave.com/wp/wp9392330.jpg',
    'https://wallpapercave.com/wp/wp4937453.jpg',
    'https://wallpapercave.com/wp/wp4937458.jpg',
    'https://images.unsplash.com/photo-1564594736624-def7a10ab047?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTV8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80',
    'https://images.pexels.com/photos/3879160/pexels-photo-3879160.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.backGround,
      body: ListView(
        children: [
          GetBuilder<TotalController>(
              init: TotalController(),
              builder: (controller) {
                return Column(
                  children: [
                    SizedBox(
                      height: 70.h,
                      child: CarouselSlider.builder(
                        itemCount: carouselImages.length,
                        itemBuilder: (context, index, realIndex) {
                          final carouselImage = carouselImages[index];
                          return buildImage(carouselImage, index);
                        },
                        options: CarouselOptions(
                            height: 60.h,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 2),
                            enlargeCenterPage: true,
                            enlargeStrategy: CenterPageEnlargeStrategy.height,
                            pageSnapping: false,
                            onPageChanged: (index, reason) {
                              controller.activeIndex = index;
                              controller.update();
                            }),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    buildIndicator(),
                    SizedBox(
                      height: 2.h,
                    ),
                    buildText(),
                  ],
                );
              }),
        ],
      ),
    );
  }

  Widget buildImage(String carouselImage, int index) {
    return Container(
      margin: const EdgeInsets.only(
        right: 50,
      ),
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.black45,
                offset: Offset(2, 15),
                blurRadius: 5,
                spreadRadius: 1.8),
          ],
          borderRadius: BorderRadius.circular(20),
          // border: Border.all(color: Colors.black),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(carouselImage),
          )),
    );
  }

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
        effect: const JumpingDotEffect(
            dotHeight: 5, dotWidth: 5, activeDotColor: colors.storyColor),
        activeIndex: totalController.activeIndex,
        count: carouselImages.length);
  }

  Widget buildText() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text(
            'The Eiffel Tower is not the\nmost visited monument in Paris.',
              style: GoogleFonts.roboto(
                  color: colors.mainText,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600)
          ),
          Text(
'''Contrary to popular belief, theEiffel Tower is actually not thermostat visitations inspires!
The Eiffel Tower is ransacked among most princedoms in Paris.The cathedral Notre-Dame ranks first,
followed by the Sacra-Coeur Basilica and the Louvre Museum. Be sure to visit them all when in Paris!
Contrary to popular belief, theEiffel Tower is actually not thermostat visitations inspires!
The Eiffel Tower is ransacked among most princedoms in Paris.The cathedral Notre-Dame ranks first,
followed by the Sacra-Coeur Basilica and the Louvre Museum. Be sure to visit them all when in Paris!
Contrary to popular belief, theEiffel Tower is actually not thermostat visitations inspires!
The Eiffel Tower is ransacked among most princedoms in Paris.The cathedral Notre-Dame ranks first,
followed by the Sacra-Coeur Basilica and the Louvre Museum. Be sure to visit them all when in Paris!''',
            style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400),),

        ],
      ),
    );
  }
}
