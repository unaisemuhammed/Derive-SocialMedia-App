import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:tripers/view/RegisterPages/signin_screen.dart';
import 'package:tripers/view/RegisterPages/signup_screen.dart';
import 'package:tripers/colors.dart' as colors;
import '../../widgets.dart';

class EmailPhone extends StatelessWidget {
  const EmailPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color myHexColor = colors.backGround;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: colors.backGround,
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
                  Expanded(
                    flex: 7,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      width: 100.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.asset(
                              'assets/icons/circleavatar.png',
                              scale: 3,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          // const Center(child: Icon(FontAwesomeIcons.user,size: 150,color: Colors.grey)),
                          Container(
                            height: 50,
                            child: AppBar(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              bottom: const TabBar(
                                tabs: [
                                  Tab(
                                    child: Text(
                                      'PHONE NUMBER',
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      'EMAIL ADDRESS',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey,
                                  width: .0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 7.h,
                                        child: TextFormField(
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13.sp),
                                          decoration: InputDecoration(
                                            prefixIcon: TextButton(
                                              onPressed: () {},
                                              child: const Text(
                                                'IN+91',
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ),
                                            hintText: "Phone number",
                                            hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10.sp),
                                            filled: true,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              borderSide: const BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              borderSide: const BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      Text(
                                        'You may receive SMS updates from travel and can opt out at any time',
                                        style: GoogleFonts.roboto(
                                            color: Colors.grey,
                                            fontSize: 10.sp),
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      elevatedButtons('Next',null, const SignUp(),
                                          myHexColor, 0, 7,Colors.black),
                                    ],
                                  ),
                                ),

                                /// second tab bar view widget
                                Container(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 7.h,
                                        child: TextFormField(
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                          decoration: InputDecoration(
                                            hintText: "Email address",
                                            hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10.sp),
                                            filled: true,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              borderSide: const BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              borderSide: const BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 12.sp,
                                      ),
                                      elevatedButtons('Next',null, const SignUp(),
                                          myHexColor, 0, 7,Colors.black),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              FontAwesomeIcons.facebookF,
                              color: Colors.grey,
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
                            icon: const Icon(
                              FontAwesomeIcons.google,
                              color: Colors.grey,
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
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Text(
                          'Already have an account? ',
                          style: GoogleFonts.roboto(color: Colors.grey),
                        ),
                        GestureDetector(
                            onTap: () => Get.to(const SignIn()),
                            child: const Text(
                              'Sign In',
                              style: TextStyle(color: Colors.white),
                            )),
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
