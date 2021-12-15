import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:tripers/view/home_screen.dart';
import 'package:tripers/colors.dart' as colors;

import '../../widgets.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizerUtil.orientation == Orientation.portrait
        ? portraitScreen()
        : landscapeScreen();
  }

  Widget portraitScreen() {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 100.h,
            width: 100.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.7), BlendMode.darken),
                image: const AssetImage(
                  'assets/images/bg.jpg',
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.only(top: 90),
                  height: 500,
                  width: 100.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome To...',
                        style: GoogleFonts.roboto(color: Colors.white, fontSize: 20.sp),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      TextField(
                        style: TextStyle(color: Colors.white, fontSize: 10.sp),
                        decoration: InputDecoration(
                          labelText: 'Full Name',
                          labelStyle:
                              TextStyle(color: Colors.grey, fontSize: 10.sp),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                      TextField(
                        style: TextStyle(color: Colors.white, fontSize: 10.sp),
                        decoration: InputDecoration(
                          labelText: 'User Name',
                          labelStyle:
                              TextStyle(color: Colors.grey, fontSize: 10.sp),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                      TextField(
                        style: TextStyle(color: Colors.white, fontSize: 10.sp),
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle:
                              TextStyle(color: Colors.grey, fontSize: 10.sp),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                      TextField(
                        style: TextStyle(color: Colors.white, fontSize: 10.sp),
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          labelStyle:
                              TextStyle(color: Colors.grey, fontSize: 10.sp),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Center(
                        child: elevatedButtons('SignUp', 10, const HomePage(),
                            colors.backGround, 60, 7, Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget landscapeScreen() {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(top: 60, right: 10, left: 50),
            alignment: Alignment.topLeft,
            height: 100.h,
            width: 100.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.7), BlendMode.darken),
                image: const AssetImage(
                  'assets/images/aesthetic-wallpaper-1.jpg',
                ),
              ),
            ),
            child: SizedBox(
              height: 100.h,
              width: 40.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.only(top: 90),
                    height: 500,
                    width: 100.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome To...',
                          style: GoogleFonts.roboto(color: Colors.white, fontSize: 10.sp),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        TextField(
                          style:
                              TextStyle(color: Colors.white, fontSize: 5.sp),
                          decoration: InputDecoration(
                            labelText: 'Full Name',
                            labelStyle:
                                TextStyle(color: Colors.grey, fontSize: 5.sp),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                        TextField(
                          style:
                              TextStyle(color: Colors.white, fontSize: 5.sp),
                          decoration: InputDecoration(
                            labelText: 'User Name',
                            labelStyle:
                                TextStyle(color: Colors.grey, fontSize: 5.sp),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                        TextField(
                          style:
                              TextStyle(color: Colors.white, fontSize: 5.sp),
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle:
                                TextStyle(color: Colors.grey, fontSize: 5.sp),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                        TextField(
                          style:
                              TextStyle(color: Colors.white, fontSize: 5.sp),
                          decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            labelStyle:
                                TextStyle(color: Colors.grey, fontSize: 5.sp),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Center(
                          child: elevatedButtons('SignUp', null, const HomePage(), colors.backGround, 30, 7 , Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
