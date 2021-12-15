import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:tripers/colors.dart' as colors;
import 'package:tripers/view/home_screen.dart';

import '../../widgets.dart';
import 'email_phone.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);
  final bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return SizerUtil.orientation == Orientation.portrait
        ?portraitScreen():landscapeScreen();
  }

  Widget portraitScreen() =>
      Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(top: 100, right: 10),
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
                  Expanded(
                    flex: 4,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      width: 100.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome To...',
                            style: GoogleFonts.roboto(
                                color: Colors.white, fontSize: 20.sp),),
                          SizedBox(height: 2.h,),
                          Text(
                            'We are Wainting for you.\nSign in and start your trip with us',
                            style: GoogleFonts.roboto(
                                color: Colors.grey, fontSize: 11.sp),),
                          SizedBox(
                            height: 5.h,
                          ),
                          TextField(
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              labelText: 'User Name',
                              labelStyle: TextStyle(
                                  color: Colors.grey, fontSize: 10.sp),
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
                            obscureText: _isObscure,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.visibility,
                                  color: Colors.grey,
                                ),
                              ),
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  color: Colors.grey, fontSize: 10.sp),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'ForgotPassword?',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 8.sp),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 1.w,
                        ),
                        Container(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              FontAwesomeIcons.facebookF,
                              color: Colors.grey, size: 15.sp,
                            ),
                          ),
                          width: 70,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 2.0,
                                color: Colors.grey, // red as border color
                              ),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        Container(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              FontAwesomeIcons.google,
                              color: Colors.grey, size: 15.sp,
                            ),
                          ),
                          width: 70,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 2.0,
                                color: Colors.grey, // red as border color
                              ),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        // Container(
                        //   child: IconButton(
                        //     onPressed: (){},
                        //     icon: Icon(FontAwesomeIcons.google),
                        //   ),
                        //   width: 50,
                        //   height: 50,
                        //   decoration: BoxDecoration(
                        //       border: Border.all(
                        //         width: 2.0,
                        //         color: Colors.grey, // red as border color
                        //       ),
                        //       borderRadius: BorderRadius.circular(10)),
                        // ),
                        elevatedButtons('SignIn', null, const HomePage(), colors.backGround, 60, 7, Colors.black),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t you have an account? ',
                          style: GoogleFonts.roboto(color: Colors.grey,
                            fontSize: 10.sp,),
                        ),
                        GestureDetector(
                            onTap: () => Get.to(const EmailPhone()),
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 10.sp),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  Widget landscapeScreen() =>
      Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(top: 100, right: 10, left: 50),
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
                    width: 40.w,
                    height: 100.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            width: 50.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcome To...',
                                  style: GoogleFonts.roboto(
                                      color: Colors.white, fontSize: 10.sp),),
                                SizedBox(height: 2.h,),
                                Text(
                                  'We are Wainting for you.\nSign in and start your trip with us',
                                    style: GoogleFonts.roboto(
                                      color: Colors.grey, fontSize: 6.sp),),
                                SizedBox(
                                  height: 5.h,
                                ),
                                TextField(
                                  style:  TextStyle(color: Colors.white,fontSize: 5.sp),
                                  decoration: InputDecoration(
                                    labelText: 'User Name',
                                    labelStyle: TextStyle(
                                        color: Colors.grey, fontSize: 5.sp),
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
                                  obscureText: _isObscure,
                                  style: TextStyle(color: Colors.white,fontSize: 5.sp),                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.visibility,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    labelText: 'Password',
                                    labelStyle: TextStyle(
                                        color: Colors.grey, fontSize: 5.sp),
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'ForgotPassword?',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 4.sp),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 1.w,
                              ),
                              Container(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    FontAwesomeIcons.facebookF,
                                    color: Colors.grey, size: 7.sp,
                                  ),
                                ),
                                width: 70,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2.0,
                                      color: Colors.grey, // red as border color
                                    ),
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              Container(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    FontAwesomeIcons.google,
                                    color: Colors.grey, size: 7.sp,
                                  ),
                                ),
                                width: 70,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2.0,
                                      color: Colors.grey, // red as border color
                                    ),
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              // Container(
                              //   child: IconButton(
                              //     onPressed: (){},
                              //     icon: Icon(FontAwesomeIcons.google),
                              //   ),
                              //   width: 50,
                              //   height: 50,
                              //   decoration: BoxDecoration(
                              //       border: Border.all(
                              //         width: 2.0,
                              //         color: Colors.grey, // red as border color
                              //       ),
                              //       borderRadius: BorderRadius.circular(10)),
                              // ),
                              elevatedButtons('SignIn', 5, const HomePage(), colors.backGround, 30, 7.5, Colors.black),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Don\'t you have an account? ',
                                style: GoogleFonts.roboto(
                                  color: Colors.grey, fontSize: 5.sp,),
                              ),
                              GestureDetector(
                                  onTap: () => Get.to(const EmailPhone()),
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 5.sp),
                                  ),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

}
