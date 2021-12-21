import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tripers/colors.dart' as colors;
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:tripers/view/monitaization/target.dart';

class BoostPost extends StatelessWidget {
  const BoostPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.backGround,
      appBar: AppBar(
        backgroundColor: colors.backGround,
        elevation: 0,
        title: Text(
          'Select your post',
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
              onPressed: () {
                Get.to(Target());
              },
              child: Text(
                'Next',
                style: GoogleFonts.roboto(color: Colors.black),
              ),),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          width: 100.w,
          height: 100.h,
          color: colors.backGround,
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
            ),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.2), BlendMode.darken),
                    fit: BoxFit.fill,
                    image: const AssetImage('assets/images/Paris.jpg'),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
