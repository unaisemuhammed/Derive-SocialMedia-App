// import 'package:flutter/material.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:sizer/sizer.dart';
// import 'package:tripers/view/RegisterPages/signin_screen.dart';
// import 'package:tripers/view/home_screen.dart';
// import 'package:tripers/colors.dart' as colors;
//
// import '../../widgets.dart';
//
// class OTP extends StatelessWidget {
//   const OTP({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
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
//                   padding: const EdgeInsets.all(20),
//                   margin: const EdgeInsets.only(top: 90),
//                   height: 80.h,
//                   width: 100.w,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         'Get One Time\nPassword',
//                         style: TextStyle(color: Colors.white, fontSize: 35),
//                       ),
//                       Row(
//                         children:  [
//                           Text('Enter  the otp sent to',style: TextStyle(color: Colors.grey,fontSize: 12.sp),),
//                           Text(' +91 9539448945 ',style: TextStyle(color: Colors.white,fontSize: 12.sp)),
//                         ],
//                       ),
//                       Form(
//                         child:  OtpTextField(
//                           numberOfFields: 5,
//                           borderColor: const Color(0xFF512DA8),
//                           //set to true to show as box or false to show as dash
//                           showFieldAsBox: true,
//                           //runs when a code is typed in
//                           onCodeChanged: (String code) {
//                             //handle validation or checks here
//                           },
//                           //runs when every textfield is filled
//                           onSubmit: (String verificationCode){
//                             showDialog(
//                                 context: context,
//                                 builder: (context){
//                                   return AlertDialog(
//                                     title: const Text("Verification Code"),
//                                     content: Text('Code entered is $verificationCode'),
//                                   );
//                                 }
//                             );
//                           }, // end onSubmit
//                         ),
//                       ),
//                       Row(
//                         children:  [
//                           Text('Don\'t receive the OTP ? ',style: GoogleFonts.roboto(color: Colors.grey,fontSize: 12.sp),),
//                           Text('RESEND OTP',style: GoogleFonts.roboto(color: Colors.white,fontSize: 12.sp)),
//                         ],
//                       ),
//                       Center(
//                         child: elevatedButtons('Verify & Proceed',null, const SignIn(),
//                             colors.backGround, 80, 7,Colors.black),
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
// }
