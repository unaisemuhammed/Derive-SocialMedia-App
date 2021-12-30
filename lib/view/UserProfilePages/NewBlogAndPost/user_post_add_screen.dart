import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:tripers/colors.dart' as colors;
import 'package:tripers/instance.dart';
import 'package:get/get.dart';
import 'package:tripers/model/post/post_api_function.dart';
import 'package:tripers/view/UserProfilePages/BlogAndPost/users_posts_screen.dart';
import 'package:tripers/view/home_screen.dart';

import '../../../slider.dart';

class AddPoster extends StatelessWidget {
  AddPoster({Key? key, required this.check}) : super(key: key);
  int check;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: colors.backGround,
        actions: [
          check == 0
              ? TextButton(
                  onPressed: () async {
                    await postApi.uploadImage(postController.onePostImage);
                    //Get.offAll(const NewBlogAndPost());
                    Get.offAll(const HomePage());
                  },
                  child: const Text('Share'),
                )
              : TextButton(
                  onPressed: () async {
                    print('PPPPPPPPPPPPPPPPPPP::${postController.currentId}');
                    postApi.updatePost(postController.currentId.toString());
                    Get.back();
                  },
                  child: const Text('Update'),
                ),
        ],
      ),
      backgroundColor: colors.backGround,
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                check == 0
                    ? Container(
                        // margin: EdgeInsets.only(left: 3.w, right: 4.w),
                        width: 100.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: FileImage(postController.onePostImage),
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    : Container(
                        // margin: EdgeInsets.only(left: 3.w, right: 4.w),
                        width: 100.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(postController.onePostImage),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                SizedBox(
                  height: 2.h,
                ),
                TextFormField(
                  controller: postController.postTitleController,
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
                  controller: postController.postDescriptionController,
                  maxLines: 5,
                  style: TextStyle(color: Colors.black, fontSize: 13.sp),
                  decoration: InputDecoration(
                    hintText: "Write Description",
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
            )),
      ),
    );
  }
}
