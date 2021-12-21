// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:sizer/sizer.dart';
// import 'package:tripers/model/authentication/authenticationApi.dart';
// import 'package:tripers/model/authentication/authenticationSignUpModel.dart';
// import 'package:tripers/view/home_screen.dart';
// import 'package:tripers/colors.dart' as colors;
//
// import '../../widgets.dart';
//
// class SignUp extends StatefulWidget {
//   const SignUp({Key? key}) : super(key: key);
//
//   @override
//   State<SignUp> createState() => _SignUpState();
// }
//
// class _SignUpState extends State<SignUp> {
//   @override
//   Widget build(BuildContext context) {
//     return SizerUtil.orientation == Orientation.portrait
//         ? portraitScreen()
//         : landscapeScreen();
//   }
//
//   Widget portraitScreen() {
//     AuthenticationSignup? authentication;
//     final TextEditingController fullNameController = TextEditingController();
//     final TextEditingController emailController = TextEditingController();
//     final TextEditingController usernameController = TextEditingController();
//     final TextEditingController phoneNumberController = TextEditingController();
//     final TextEditingController passwordController = TextEditingController();
//     final TextEditingController confirmPasswordController =
//         TextEditingController();
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Container(
//             height: 100.h,
//             width: 100.w,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 fit: BoxFit.cover,
//                 colorFilter: ColorFilter.mode(
//                     Colors.black.withOpacity(0.7), BlendMode.darken),
//                 image: const AssetImage(
//                   'assets/images/bg.jpg',
//                 ),
//               ),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   padding: const EdgeInsets.all(15),
//                   margin: const EdgeInsets.only(top: 0),
//                   height: 100.h,
//                   width: 100.w,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Welcome To...',
//                         style: GoogleFonts.roboto(
//                             color: Colors.white, fontSize: 20.sp),
//                       ),
//                       SizedBox(
//                         height: 5.h,
//                       ),
//                       TextField(
//                         controller: fullNameController,
//                         style: TextStyle(color: Colors.white, fontSize: 10.sp),
//                         decoration: InputDecoration(
//                           labelText: 'Full Name',
//                           labelStyle:
//                               TextStyle(color: Colors.grey, fontSize: 10.sp),
//                           enabledBorder: const UnderlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.grey,
//                               width: 1.0,
//                             ),
//                           ),
//                           focusedBorder: const UnderlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.grey,
//                               width: 1.0,
//                             ),
//                           ),
//                         ),
//                       ),
//                       TextField(
//                         controller: emailController,
//                         style: TextStyle(color: Colors.white, fontSize: 10.sp),
//                         decoration: InputDecoration(
//                           labelText: 'Email',
//                           labelStyle:
//                               TextStyle(color: Colors.grey, fontSize: 10.sp),
//                           enabledBorder: const UnderlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.grey,
//                               width: 1.0,
//                             ),
//                           ),
//                           focusedBorder: const UnderlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.grey,
//                               width: 1.0,
//                             ),
//                           ),
//                         ),
//                       ),
//                       TextField(
//                         controller: usernameController,
//                         style: TextStyle(color: Colors.white, fontSize: 10.sp),
//                         decoration: InputDecoration(
//                           labelText: 'User Name',
//                           labelStyle:
//                               TextStyle(color: Colors.grey, fontSize: 10.sp),
//                           enabledBorder: const UnderlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.grey,
//                               width: 1.0,
//                             ),
//                           ),
//                           focusedBorder: const UnderlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.grey,
//                               width: 1.0,
//                             ),
//                           ),
//                         ),
//                       ),
//                       TextField(
//                         controller: phoneNumberController,
//                         style: TextStyle(color: Colors.white, fontSize: 10.sp),
//                         decoration: InputDecoration(
//                           labelText: 'Phone Number',
//                           labelStyle:
//                               TextStyle(color: Colors.grey, fontSize: 10.sp),
//                           enabledBorder: const UnderlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.grey,
//                               width: 1.0,
//                             ),
//                           ),
//                           focusedBorder: const UnderlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.grey,
//                               width: 1.0,
//                             ),
//                           ),
//                         ),
//                       ),
//                       TextField(
//                         controller: passwordController,
//                         style: TextStyle(color: Colors.white, fontSize: 10.sp),
//                         decoration: InputDecoration(
//                           labelText: 'Password',
//                           labelStyle:
//                               TextStyle(color: Colors.grey, fontSize: 10.sp),
//                           enabledBorder: const UnderlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.grey,
//                               width: 1.0,
//                             ),
//                           ),
//                           focusedBorder: const UnderlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.grey,
//                               width: 1.0,
//                             ),
//                           ),
//                         ),
//                       ),
//                       TextField(
//                         controller: confirmPasswordController,
//                         style: TextStyle(color: Colors.white, fontSize: 10.sp),
//                         decoration: InputDecoration(
//                           labelText: 'Confirm Password',
//                           labelStyle:
//                               TextStyle(color: Colors.grey, fontSize: 10.sp),
//                           enabledBorder: const UnderlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.grey,
//                               width: 1.0,
//                             ),
//                           ),
//                           focusedBorder: const UnderlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.grey,
//                               width: 1.0,
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 5.h,
//                       ),
//                       Center(
//                         child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             shape: RoundedRectangleBorder(
//                               borderRadius:
//                                   BorderRadius.circular(10), // <-- Radius
//                             ),
//                             primary: colors.backGround,
//                             minimumSize: Size(60.w, 7.h),
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 'SignUp',
//                                 style: TextStyle(
//                                     color: Colors.black, fontSize: 12.sp),
//                               ),
//                             ],
//                           ),
//                           onPressed: () async {
//                             var fullName = fullNameController.text;
//                             var email = emailController.text;
//                             var userName = usernameController.text;
//                             var phone = phoneNumberController.text;
//                             var password = passwordController.text;
//                             var confirmPassword = confirmPasswordController.text;
//                             final AuthenticationSignup? authentication2 = await signUpAuthentication( userName: userName, email:email,
//                                 confirmPassword:confirmPassword, phone: phone, password:password, fullName: fullName);
//                             setState(() {
//                               authentication = authentication2;
//                               print("unis:::${authentication?.username}");
//                             });
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget landscapeScreen() {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Container(
//             padding: const EdgeInsets.only(top: 50, right: 10, left: 50),
//             alignment: Alignment.topLeft,
//             height: 100.h,
//             width: 100.w,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 fit: BoxFit.cover,
//                 colorFilter: ColorFilter.mode(
//                     Colors.black.withOpacity(0.7), BlendMode.darken),
//                 image: const AssetImage(
//                   'assets/images/aesthetic-wallpaper-1.jpg',
//                 ),
//               ),
//             ),
//             child: SizedBox(
//               height: 100.h,
//               width: 40.w,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     padding: const EdgeInsets.all(15),
//                     margin: const EdgeInsets.only(top: 90),
//                     height: 500,
//                     width: 100.w,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Welcome To...',
//                           style: GoogleFonts.roboto(
//                               color: Colors.white, fontSize: 10.sp),
//                         ),
//                         SizedBox(
//                           height: 1.h,
//                         ),
//                         TextField(
//                           style: TextStyle(color: Colors.white, fontSize: 5.sp),
//                           decoration: InputDecoration(
//                             labelText: 'Full Name',
//                             labelStyle:
//                                 TextStyle(color: Colors.grey, fontSize: 5.sp),
//                             enabledBorder: const UnderlineInputBorder(
//                               borderSide: BorderSide(
//                                 color: Colors.grey,
//                                 width: 1.0,
//                               ),
//                             ),
//                             focusedBorder: const UnderlineInputBorder(
//                               borderSide: BorderSide(
//                                 color: Colors.grey,
//                                 width: 1.0,
//                               ),
//                             ),
//                           ),
//                         ),
//                         TextField(
//                           style: TextStyle(color: Colors.white, fontSize: 5.sp),
//                           decoration: InputDecoration(
//                             labelText: 'User Name',
//                             labelStyle:
//                                 TextStyle(color: Colors.grey, fontSize: 5.sp),
//                             enabledBorder: const UnderlineInputBorder(
//                               borderSide: BorderSide(
//                                 color: Colors.grey,
//                                 width: 1.0,
//                               ),
//                             ),
//                             focusedBorder: const UnderlineInputBorder(
//                               borderSide: BorderSide(
//                                 color: Colors.grey,
//                                 width: 1.0,
//                               ),
//                             ),
//                           ),
//                         ),
//                         TextField(
//                           style: TextStyle(color: Colors.white, fontSize: 5.sp),
//                           decoration: InputDecoration(
//                             labelText: 'Password',
//                             labelStyle:
//                                 TextStyle(color: Colors.grey, fontSize: 5.sp),
//                             enabledBorder: const UnderlineInputBorder(
//                               borderSide: BorderSide(
//                                 color: Colors.grey,
//                                 width: 1.0,
//                               ),
//                             ),
//                             focusedBorder: const UnderlineInputBorder(
//                               borderSide: BorderSide(
//                                 color: Colors.grey,
//                                 width: 1.0,
//                               ),
//                             ),
//                           ),
//                         ),
//                         TextField(
//                           style: TextStyle(color: Colors.white, fontSize: 5.sp),
//                           decoration: InputDecoration(
//                             labelText: 'Confirm Password',
//                             labelStyle:
//                                 TextStyle(color: Colors.grey, fontSize: 5.sp),
//                             enabledBorder: const UnderlineInputBorder(
//                               borderSide: BorderSide(
//                                 color: Colors.grey,
//                                 width: 1.0,
//                               ),
//                             ),
//                             focusedBorder: const UnderlineInputBorder(
//                               borderSide: BorderSide(
//                                 color: Colors.grey,
//                                 width: 1.0,
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 1.h,
//                         ),
//                         Center(
//                           child: ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               shape: RoundedRectangleBorder(
//                                 borderRadius:
//                                     BorderRadius.circular(10), // <-- Radius
//                               ),
//                               primary: colors.backGround,
//                               minimumSize: Size(30.w, 7.h),
//                             ),
//                             onPressed: () {},
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: const [
//                                 Text(
//                                   'SignUp',
//                                   style: TextStyle(
//                                       color: Colors.black, fontSize: 13),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sizer/sizer.dart';
import 'package:tripers/colors.dart' as colors;
import 'package:tripers/controller/authentication_controller.dart';
import 'package:tripers/model/authentication/authenticationApi.dart';
import 'package:tripers/view/RegisterPages/signin_screen.dart';

import '../../instance.dart';
import 'email_password.dart';

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
                Expanded(
                  flex: 5,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.only(top: 0),
                    height: 75.h,
                    width: 100.w,
                    child: Form(
                      key: authenticationController.loginFormKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome To...',
                            style: GoogleFonts.roboto(
                                color: Colors.white, fontSize: 20.sp),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          TextFormField(
                            validator: (value) {
                              return authenticationController
                                  .nameValidation(value!);
                            },
                            controller:
                                authenticationController.fullNameController,
                            style:
                                TextStyle(color: Colors.white, fontSize: 10.sp),
                            decoration: InputDecoration(
                              labelText: 'Full Name',
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
                          // TextField(
                          //   controller: authenticationController.emailController,
                          //   style: TextStyle(color: Colors.white, fontSize: 10.sp),
                          //   decoration: InputDecoration(
                          //     labelText: 'Email',
                          //     labelStyle:
                          //         TextStyle(color: Colors.grey, fontSize: 10.sp),
                          //     enabledBorder: const UnderlineInputBorder(
                          //       borderSide: BorderSide(
                          //         color: Colors.grey,
                          //         width: 1.0,
                          //       ),
                          //     ),
                          //     focusedBorder: const UnderlineInputBorder(
                          //       borderSide: BorderSide(
                          //         color: Colors.grey,
                          //         width: 1.0,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          TextFormField(
                            validator: (value) {
                              return authenticationController
                                  .usernameValidation(value!);
                            },
                            controller:
                                authenticationController.usernameController,
                            style:
                                TextStyle(color: Colors.white, fontSize: 10.sp),
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
                          TextFormField(
                            controller:
                                authenticationController.phoneNumberController,
                            validator: (value) {
                              return authenticationController
                                  .phoneValidation(value!);
                            },
                            style:
                                TextStyle(color: Colors.white, fontSize: 10.sp),
                            decoration: InputDecoration(
                              labelText: 'Phone Number',
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
                          TextFormField(
                            validator: (value) {
                              return authenticationController
                                  .passwordValidation(value!);
                            },
                            controller:
                                authenticationController.passwordController,
                            style:
                                TextStyle(color: Colors.white, fontSize: 10.sp),
                            decoration: InputDecoration(
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
                          TextFormField(
                            validator: (value) {
                              return authenticationController
                                  .confirmPasswordValidation(value!);
                            },
                            controller: authenticationController
                                .confirmPasswordController,
                            style:
                                TextStyle(color: Colors.white, fontSize: 10.sp),
                            decoration: InputDecoration(
                              labelText: 'Confirm Password',
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
                            height: 5.h,
                          ),
                          Center(
                            child: GetBuilder<AuthenticationController>(
                                builder: (controller) {
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
                                      'SignUp',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 12.sp),
                                    ),
                                  ],
                                ),
                                onPressed: () async {
                                  authenticationController.saveForm();
                                  signUpAuthentication();
                                  debugPrint("Submitted");
                                  controller.update();
                                },
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: IconButton(
                          onPressed: () {
                            // Get.to(const EmailPassword());
                          },
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
                          onPressed: () async{
                           await authenticationController.googleLogIn();
                            authenticationController.googleNameController = authenticationController.user?.displayName!;
                            authenticationController.googleEmailController = authenticationController.user?.email;
                            authenticationController.googleProfilePhotoController = authenticationController.user?.photoUrl;

                            // Get.to(const EmailPassword());
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
                          onTap: () => Get.back(),
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
    );
  }

  Widget landscapeScreen() {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(top: 50, right: 10, left: 50),
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
                          style: GoogleFonts.roboto(
                              color: Colors.white, fontSize: 10.sp),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        TextField(
                          style: TextStyle(color: Colors.white, fontSize: 5.sp),
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
                          style: TextStyle(color: Colors.white, fontSize: 5.sp),
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
                          style: TextStyle(color: Colors.white, fontSize: 5.sp),
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
                          style: TextStyle(color: Colors.white, fontSize: 5.sp),
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
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10), // <-- Radius
                              ),
                              primary: colors.backGround,
                              minimumSize: Size(30.w, 7.h),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'SignUp',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 13),
                                ),
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
        ),
      ),
    );
  }
}
