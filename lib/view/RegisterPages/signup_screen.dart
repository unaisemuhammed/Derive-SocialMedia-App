import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:tripers/colors.dart' as colors;
import 'package:tripers/controller/authentication_controller.dart';
import 'package:tripers/model/authentication/authenticationApi.dart';
import '../../instance.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            child: Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(top: 0),
              height: 100.h,
              width: 100.w,
              child: Form(
                key: authenticationController.loginFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome To Dérive',
                      style: GoogleFonts.roboto(
                          color: Colors.white, fontSize: 20.sp),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    TextFormField(
                      validator: (value) {
                        return authenticationController.nameValidation(value!);
                      },
                      controller: authenticationController.fullNameController,
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
                    TextFormField(
                      validator: (value) {
                        return authenticationController
                            .usernameValidation(value!);
                      },
                      controller: authenticationController.usernameController,
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
                    TextFormField(
                      validator: (value) {
                        return authenticationController
                            .passwordValidation(value!);
                      },
                      controller: authenticationController.passwordController,
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
                    TextFormField(
                      validator: (value) {
                        return authenticationController
                            .confirmPasswordValidation(value!);
                      },
                      controller:
                          authenticationController.confirmPasswordController,
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
                    GetBuilder<AuthenticationController>(builder: (controller) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // <-- Radius
                          ),
                          primary: colors.backGround,
                          minimumSize: Size(60.w, 7.h),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Register',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 12.sp),
                            ),
                          ],
                        ),
                        onPressed: () async {
                          authenticationController.saveForm();
                          await signUpAuthentication();
                          authenticationController.clearController();
                          controller.update();
                        },
                      );
                    }),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
