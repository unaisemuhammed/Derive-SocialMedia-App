import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:tripers/controller/authentication_controller.dart';
import 'package:tripers/controller/secondPartyAuthentication_controller.dart';
import 'package:tripers/instance.dart';
import 'package:tripers/model/authentication/authenticationApi.dart';
import 'package:tripers/view/RegisterPages/signin_screen.dart';
import 'package:tripers/colors.dart' as colors;

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
                          Container(
                            height: 8.h,
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
                                  child: Form(
                                    key: authenticationController.loginFormKey2,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 7.h,
                                          child: TextFormField(
                                            controller: authenticationController
                                                .phoneNumberController,
                                            validator: (value) {
                                              return authenticationController
                                                  .phoneValidation(value!);
                                            },
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
                                        GetBuilder<AuthenticationController>(
                                            builder: (controller) {
                                          return ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              primary: colors.backGround,
                                              minimumSize: Size(60.w, 6.h),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Next',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12.sp),
                                                ),
                                              ],
                                            ),
                                            onPressed: () async {
                                              authenticationController
                                                  .saveForm2();
                                              print(authenticationController
                                                  .phoneNumberController.text);
                                              debugPrint("Submitted");
                                              controller.update();
                                            },
                                          );
                                        }),
                                      ],
                                    ),
                                  ),
                                ),

                                /// second tab bar view widget
                                Container(
                                  padding: const EdgeInsets.all(15),
                                  child: Form(
                                    key: authenticationController.loginFormKey3,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 7.h,
                                          child: TextFormField(
                                            controller: authenticationController
                                                .emailController,
                                            validator: (value) {
                                              return authenticationController
                                                  .emailValidation(value!);
                                            },
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13.sp),
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
                                        GetBuilder<AuthenticationController>(
                                            builder: (controller) {
                                          return ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              primary: colors.backGround,
                                              minimumSize: Size(60.w, 6.h),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Next',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12.sp),
                                                ),
                                              ],
                                            ),
                                            onPressed: () async {
                                              authenticationController
                                                  .saveForm3();
                                              controller.update();
                                            },
                                          );
                                        }),
                                      ],
                                    ),
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
                            onPressed: ()  {
                               authenticationGoogle.googleRegister();
                            },
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
                            onTap: () => Get.offAll(const SignIn()),
                            child: const Text(
                              'Log in',
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
