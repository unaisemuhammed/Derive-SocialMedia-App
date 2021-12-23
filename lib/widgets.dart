import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:story_view/utils.dart';
import 'package:story_view/widgets/story_view.dart';
import 'package:tripers/colors.dart' as colors;
import 'package:tripers/view/ChatPages/chat_text.dart';
import 'package:tripers/view/UserProfilePages/show_others_profile_screen.dart';
import 'instance.dart';

// Home PAge Random Posts
Widget homePosts() {
  return GetBuilder(
      init: totalController,
      builder: (controller) {
        return Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 4.w),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          totalController.isStatusLoaded == false
                              ? Get.to(statusPage())
                              : Get.to(const OthersProfile());
                          totalController.isStatusLoaded = true;
                          totalController.update();
                        },
                        child: DashedCircle(
                          child:  Padding(
                            padding: EdgeInsets.all(2.0),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/user.jpeg'),
                              // NetworkImage(authenticationController.googleProfilePhotoController.toString()),
                            ),
                          ),
                          dashes: 2,
                          color: totalController.isStatusLoaded == true
                              ? colors.backGroundGrey
                              : colors.storyColor,
                        ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: .1.h,
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => Get.to(const OthersProfile()),
                        child: Text(
                          'hi',
                         // authenticationController.googleNameController.toString().toLowerCase().trim().replaceAll(RegExp(r"\s+"), ""),
                          style: GoogleFonts.roboto(
                              color: colors.mainText,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Text(
                      'paris,france',
                        style: GoogleFonts.roboto(
                            color: colors.subText, fontSize: 9.sp),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: PopupMenuButton(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    itemBuilder: (BuildContext context) {
                      return [
                        PopupMenuItem(
                            child: Text(
                          'Follow',
                          style: GoogleFonts.openSans(
                            fontSize: 10.sp,
                          ),
                        )),
                        PopupMenuItem(
                            child: Text(
                          'Message',
                          style: GoogleFonts.openSans(
                            fontSize: 10.sp,
                          ),
                        ))
                      ];
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 3.w, right: 4.w),
              width: 100.w,
              height: 35.h,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 1.0,
                    spreadRadius: 1.0,
                    offset: Offset(
                      1,
                      1,
                    ), // shadow direction: bottom right
                  )
                ],
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  image: AssetImage('assets/images/Paris.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15, top: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border,
                      size: 22.sp,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.bookmark,
                      size: 18.sp,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 4.w, bottom: 1.h, right: 4.w),
              width: 100.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Paris Mind Set Over Everything',
                    style: GoogleFonts.roboto(
                      color: colors.mainText,
                      fontSize: 15.sp,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    '''Contrary to popular belief, theEiffel Tower is actually not\nthe most visited...more''',
                    style: GoogleFonts.roboto(
                        color: colors.subText, fontSize: 11.sp),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 2.h, left: 2.h),
                      child: Text(
                        'Add a Comment..',
                        style: GoogleFonts.openSans(
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
        );
      });
}

//Elevated Button
Widget elevatedButtons(String text, int? fontSize, Widget? widget, Color color,
    double width, double height, Color textColor) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // <-- Radius
      ),
      primary: color,
      minimumSize: Size(width.w, height.h),
    ),
    onPressed: () {
      if (widget == null) {
        Get.back();
      } else {
        Get.to(widget);
      }
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
              color: textColor, fontSize: fontSize == null ? 13 : fontSize.sp),
        ),
      ],
    ),
  );
}

//Status Page
Widget statusPage() {
  return Material(
    child: StoryView(
      storyItems: [
        StoryItem.pageImage(
            url:
                'https://i.pinimg.com/originals/6c/36/77/6c367773c3666b565af600c6cf034a3d.jpg',
            controller: totalController.controller),
        StoryItem.text(title: 'unys._', backgroundColor: colors.backGround)
      ],
      controller: totalController.controller,
      onComplete: () {
        Get.back();
      },
      onVerticalSwipeComplete: (direction) {
        if (direction == Direction.down) {
          Get.back();
        }
      },
    ),
  );
}

//List of Message and Group
Widget listTile(String title, String subtitle, String image, Widget trailing) {
  return ListTile(
    onTap: () => Get.to(const Chat()),
    leading: GestureDetector(
      onTap: () => Get.to(statusPage()),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: CircleAvatar(
          backgroundColor: colors.backGround,
          backgroundImage: AssetImage(image),
        ),
      ),
    ),
    title: Text(
      title,
      style: GoogleFonts.roboto(),
    ),
    subtitle: Text(
      subtitle,
      style: GoogleFonts.roboto(),
    ),
    trailing: trailing,
  );
}

//Authentication AlertBox
Future alertBox({required String content}) {
  return Get.defaultDialog(
    backgroundColor: colors.backGround,
    title: 'Invalid access',
    titleStyle:
        GoogleFonts.roboto(color: Colors.black, fontWeight: FontWeight.w600),
    middleText:
    content,
    middleTextStyle: GoogleFonts.roboto(color: Colors.grey),
    actions: [
      SizedBox(
          child: TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                'Ok',
                style: GoogleFonts.roboto(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w300),
              ),),),
    ],
  );
  // return showDialog<void>(
  //   context: context,
  //   barrierDismissible: true,
  //   builder: (BuildContext context) {
  //     return AlertDialog(
  //       backgroundColor: colors.backGround,
  //       title: Text(
  //         'Incorrect password/username',
  //         textAlign: TextAlign.center,
  //         style: GoogleFonts.roboto(
  //             color: Colors.black, fontWeight: FontWeight.w600),
  //       ),
  //       content: Text(
  //         'The username or password that you\'ve entered is incorrect.Please try again.',
  //         textAlign: TextAlign.center,
  //         style: GoogleFonts.roboto(color: Colors.grey),
  //       ),
  //       actions: [
  //         SizedBox(child: TextButton(onPressed: (){Get.back();}, child:  Text('Ok', style: GoogleFonts.roboto(fontSize: 22,
  //             color: Colors.black, fontWeight: FontWeight.w300),)))
  //       ],
  //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  //     );
  //   },
  // );
}

//Add Post AlertBox


