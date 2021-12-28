import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tripers/colors.dart' as colors;
import 'package:tripers/controller/getx_controller.dart';
import 'package:tripers/controller/post_controller.dart';

import '../../../instance.dart';
import '../../../slider.dart';

class NewBlog extends StatelessWidget {
  NewBlog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TotalController>(
        init: TotalController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: colors.backGround,
            body: ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 30.h,
                        child: GridView.builder(
                          // physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 5,
                            crossAxisSpacing: 5.0,
                            mainAxisSpacing: 5.0,
                          ),
                          itemCount: postController.carouselImages.length,
                          itemBuilder: (context, index) {
                            final carouselImage =
                                postController.carouselImages[index];
                            return Container(
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black45,
                                      offset: Offset(2, 5),
                                      blurRadius: 5,
                                      spreadRadius: 1.8),
                                ],
                                borderRadius: BorderRadius.circular(8),
                                // border: Border.all(color: Colors.black),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: FileImage(carouselImage),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    buildText(),
                  ],
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: () async {
                  final file = await postController.pickMedia(
                    isGallery: postController.isGallery,
                    // cropImage: postController.cropSquareImage
                  );
                  if (file == null) return;
                  postController.oneCarouselImage=file;
                  postController.carouselImages.add(file);
                  controller.update();
                },
                child: const Icon(Icons.image)),
          );
        });
  }

  Widget buildText() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          TextFormField(
            style: TextStyle(color: Colors.black, fontSize: 13.sp),
            decoration: InputDecoration(
              hintText: "Write a caption",
              hintStyle: TextStyle(color: Colors.grey, fontSize: 10.sp),
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          TextFormField(
            maxLines: 9,
            style: TextStyle(color: Colors.black, fontSize: 13.sp),
            decoration: InputDecoration(
              hintText: "Write a caption",
              hintStyle: TextStyle(color: Colors.grey, fontSize: 10.sp),
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
