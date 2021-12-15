import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tripers/colors.dart' as colors;
import 'package:sizer/sizer.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              child: const Icon(
                Icons.person,
                size: 50,
              ),
              decoration: const BoxDecoration(
                color: colors.backGroundGrey,
                shape: BoxShape.circle,
                // border: Border.all(),
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            const Text(
              'unys._',
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.black,
              )),
        ],
        backgroundColor: colors.backGround,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(bottom: 10,left: 5,right: 5
          ),
          alignment: Alignment.bottomCenter,
          decoration: const BoxDecoration(color: colors.backGround),
          height: 100.h,
          width: 100.w,
          child:  SizedBox(
            height: 7.h,
            width: 100.w,
            child: TextField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                          color: Colors.black
                      )
                  ) ,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  filled: true,
                  hintStyle: GoogleFonts.roboto(
                      color: colors.subText, fontSize: 12.sp),
                  hintText: "Message",prefixIcon: const Icon(Icons.icecream_outlined),suffixIcon: const Icon(FontAwesomeIcons.arrowAltCircleRight,color: colors.storyColor),
                  fillColor: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
