import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:tripers/colors.dart' as colors;
import 'package:tripers/controller/post_controller.dart';
import 'package:tripers/view/UserProfilePages/NewBlogAndPost/user_post_add_screen.dart';

import '../../../instance.dart';
import '../../../slider.dart';

class NewPost extends StatelessWidget {
  const NewPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PostController>(
        init: PostController(),
        builder: (controller) {
      return Scaffold(
        backgroundColor: colors.backGround,
        body: SafeArea(
          child: ListView.builder(
              itemCount: postController.imageFile.length,
              itemBuilder: (context, index) {
                final postImages = postController.imageFile[index];
                return Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 4, right: 4),
                        width: 100.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black54,
                              blurRadius: 1.0,
                              spreadRadius: 1.0,
                              offset: Offset(
                                0.0,
                                1.0,
                              ), // shadow direction: bottom right
                            )
                          ],
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: FileImage(postImages),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_border,
                              size: 25.sp,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              FontAwesomeIcons.bookmark,
                              size: 20.sp,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: 100.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              postController.postTitleController.text.toString(),
                              style: GoogleFonts.roboto(
                                color: colors.mainText,
                                fontSize: 15.sp,
                              ),
                            ),
                            Text(
                              postController.postDescriptionController.text.toString(),
                              style: GoogleFonts.roboto(
                                  color: colors.subText, fontSize: 10.sp),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Center(
                              child: Container(
                                padding: EdgeInsets.only(top: 2.h, left: 2.h),
                                child: Text(
                                  'Add a Comment..',
                                  style: GoogleFonts.roboto(
                                      color: colors.subText, fontSize: 9.sp),
                                ),
                                width: 100.w,
                                height: 6.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final file = await postController.pickMediaWithCrop(
                isGallery: postController.isGallery,
                cropImage: postController.cropSquareImage);
            if (file == null) return;
            postController.onePostImage = file;
            postController.imageFile.add(file);
            postController.postTitleController.clear();
            postController.postDescriptionController.clear();
            Get.to(AddPoster(
              check: 0,
            ));
            controller.update();
          },
          child: const Icon(Icons.image),
        ),
      );
    });
  }
}
