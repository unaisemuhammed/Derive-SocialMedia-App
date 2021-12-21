import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:tripers/colors.dart'as colors;
import 'package:get/get.dart';
class Target extends StatelessWidget {
  const Target({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: colors.backGround,
      appBar: AppBar(
        backgroundColor: colors.backGround,
        elevation: 0,
        title: Text(
          'Mark your target',
          style: GoogleFonts.roboto(
            color: colors.mainText,
            fontSize: 15.sp,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Next',
              style: GoogleFonts.roboto(color: Colors.black),
            ),),
        ],
      ),
      body: SafeArea(child: Container(

      ),),
    );
  }
}
