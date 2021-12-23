import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:sizer/sizer.dart';
import 'package:tripers/colors.dart' as colors;
import '../../instance.dart';
import '../../slider.dart';
import '../settings_screen.dart';
import 'edit_profile_screen.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.backGround,
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate([
                  SizedBox(
                    width: 100.w,
                    height: 59.h,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          child: Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: const Icon(
                                Icons.settings,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Get.to(const Settings());
                              },
                            ),
                            width: 100.w,
                            height: 25.h,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: AssetImage('assets/images/cover.jpg'),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 13.h,
                          child: SizedBox(
                            width: 100.w,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () =>
                                          Get.to(FollowAndFollowers(index: 0,)),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 15.h,
                                          ),
                                          Text(
                                            '500',
                                            style: GoogleFonts.roboto(
                                                color: Colors.black,
                                                fontSize: 13.sp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "Following",
                                            style: GoogleFonts.roboto(
                                                color: Colors.black,
                                                fontSize: 13.sp,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: 62.sp,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 60.sp,
                                        // backgroundImage: NetworkImage(authenticationController.googleProfilePhotoController.toString()),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Get.to(FollowAndFollowers(index: 1,));
                                      },
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 15.h,
                                          ),
                                          Text(
                                            '1M',
                                            style: GoogleFonts.roboto(
                                                color: Colors.black,
                                                fontSize: 13.sp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "Followers",
                                            style: GoogleFonts.roboto(
                                                color: Colors.black,
                                                fontSize: 13.sp,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Text(
                                  authenticationGoogle.googleNameController
                                      .toString().toLowerCase()
                                      .trim()
                                      .replaceAll(RegExp(r"\s+"), ""),
                                  style: GoogleFonts.roboto(
                                      color: colors.mainText,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'Mohammed Unaise',
                                  style: GoogleFonts.roboto(
                                      color: colors.mainText,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Entrepreneur,Software Developer',
                                  style: GoogleFonts.roboto(
                                      color: colors.subText,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: [
                                    GestureDetector(
                                        onTap: () =>
                                            Get.to(const EditProfile()),
                                        child: Container(
                                            decoration: BoxDecoration(
                                                boxShadow: const [
                                                  BoxShadow(
                                                      blurRadius: 1,
                                                      color: Colors.black54,
                                                      offset: Offset(1, 1))
                                                ],
                                                color: Colors.white,
                                                borderRadius:
                                                BorderRadius.circular(10)),
                                            height: 5.h,
                                            width: 40.w,
                                            child: const Center(
                                                child: Text(
                                                  'Edit Profile',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 13),
                                                )))),
                                    GestureDetector(
                                        onTap: () => slideSheet(context),
                                        child: Container(
                                            decoration: BoxDecoration(
                                                boxShadow: const [
                                                  BoxShadow(
                                                      blurRadius: 1,
                                                      color: Colors.black54,
                                                      offset: Offset(1, 1))
                                                ],
                                                color: Colors.white,
                                                borderRadius:
                                                BorderRadius.circular(10)),
                                            height: 5.h,
                                            width: 40.w,
                                            child: const Center(
                                                child: Text(
                                                  'Blog & Post Tools',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 13),
                                                )))),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],),),
            ];
          },
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 08),
            // child: GridView.builder(
            //   shrinkWrap: true,
            //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 3,
            //     crossAxisSpacing: 5.0,
            //     mainAxisSpacing: 5.0,
            //   ),
            //   itemCount: 5,
            //   itemBuilder: (context, index) {
            //     return Container(
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(5),
            //         image:  DecorationImage(
            //           colorFilter: ColorFilter.mode( Colors.black.withOpacity(0.5),  BlendMode.darken),
            //           fit: BoxFit.fill,
            //           image: const AssetImage('assets/images/Paris.jpg'),),),
            //       child: Center(child:  Text('Paris',style: GoogleFonts.openSans(
            //           color: Colors.white,
            //           fontSize: 13.sp,
            //           fontWeight: FontWeight.w600),),),
            //     );
            //   },
            // ),

            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 25.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.4),
                                BlendMode.darken),
                            fit: BoxFit.fitWidth,
                            image: const AssetImage('assets/images/Paris.jpg'),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Paris',
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }

  slideSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: const EdgeInsets.all(18),
            height: 50.h,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              color: colors.backGround,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(50)),
                  height: .5.h,
                  width: 12.w,
                ),
                Text(
                  'Add',
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500),
                ),
                const Divider(
                  thickness: 2,
                ),
                InkWell(
                  onTap: () async {
                    final file = await postController.pickMedia(
                        isGallery: postController.isGallery,
                        cropImage: postController.cropSquareImage);
                    if(file ==null)return ;
                    postController.imageFiles.add(file);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const Icon(FontAwesomeIcons.penAlt),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text('Blog & Posts', style: GoogleFonts.roboto(
                          color: Colors.black, fontSize: 12.sp),),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  indent: 15.w,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Icon(FontAwesomeIcons.penAlt),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text('Boost Your Post', style: GoogleFonts.roboto(
                        color: Colors.black, fontSize: 12.sp),)
                  ],
                ),
                Divider(
                  thickness: 2,
                  indent: 15.w,
                ), Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Icon(FontAwesomeIcons.penAlt),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text('Request for Verified Account',
                      style: GoogleFonts.roboto(
                          color: Colors.black, fontSize: 12.sp),)
                  ],
                ),
                Divider(
                  thickness: 2,
                  indent: 15.w,
                ),
              ],
            ),
          );
        });
  }


}
