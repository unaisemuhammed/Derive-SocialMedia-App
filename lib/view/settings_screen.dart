import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:tripers/colors.dart' as colors;
import 'package:get/get.dart';
import 'package:tripers/controller/secondPartyAuthentication_controller.dart';
import 'package:tripers/controller/shared_preference_controll.dart';
import 'package:tripers/instance.dart';
import 'package:tripers/view/RegisterPages/signin_screen.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.backGround,
      appBar: AppBar(
        backgroundColor: colors.backGround,
        elevation: 0,
        title: Text(
          'Settings',
          style: GoogleFonts.openSans(
            color: colors.mainText,
            fontSize: 20.sp,
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
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 5.h),
          height: 100.h,
          width: 100.w,
          child: Column(
            children: [
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.userPlus,
                  color: Colors.black,
                ),
                title: Text(
                  'Invite Your Friend',
                  style: GoogleFonts.roboto(
                      color: colors.subText,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.questionCircle,
                  color: Colors.black,
                ),
                title: Text(
                  'Help',
                  style: GoogleFonts.roboto(
                      color: colors.subText,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.exclamationCircle,
                  color: Colors.black,
                ),
                title: Text(
                  'About',
                  style: GoogleFonts.roboto(
                      color: colors.subText,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.shieldAlt,
                  color: Colors.black,
                ),
                title: Text(
                  'Privacy',
                  style: GoogleFonts.roboto(
                      color: colors.subText,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.userCircle,
                  color: Colors.black,
                ),
                title: Text(
                  'Add Account',
                  style: GoogleFonts.roboto(
                      color: colors.subText,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                onTap: () async {
                  await authenticationGoogle.logout();
                  return Get.offAll(const SignIn());
                },
                leading: const Icon(
                  FontAwesomeIcons.signOutAlt,
                  color: Colors.black,
                ),
                title: Text(
                  'Log out',
                  style: GoogleFonts.roboto(
                      color: colors.subText,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
