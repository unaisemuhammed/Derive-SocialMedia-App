// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
//
// import '../../instance.dart';
//
// class EmailPassword extends StatelessWidget {
//   const EmailPassword({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: const EdgeInsets.all(15),
//           color: Colors.white,
//           height: 100.h,
//           width: 100.w,
//         child: Center(
//           child: Form(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 TextFormField(
//                   validator: (value) {
//                     return authenticationController
//                         .passwordValidation(value!);
//                   },
//                   initialValue:authenticationController.users?.email,
//                   style:
//                   TextStyle(color: Colors.black, fontSize: 10.sp),
//                   decoration: InputDecoration(
//                     labelText: 'Email',
//                     labelStyle: TextStyle(
//                         color: Colors.grey, fontSize: 10.sp),
//                     enabledBorder: const UnderlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Colors.grey,
//                         width: 1.0,
//                       ),
//                     ),
//                     focusedBorder: const UnderlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Colors.grey,
//                         width: 1.0,
//                       ),
//                     ),
//                   ),
//                 ),
//                  SizedBox(
//                   height: 3.h,
//                 ),
//                 TextFormField(
//                   validator: (value) {
//                     return authenticationController
//                         .confirmPasswordValidation(value!);
//                   },
//                   controller: authenticationController
//                       .confirmPasswordController,
//                   style:
//                   TextStyle(color: Colors.white, fontSize: 10.sp),
//                   decoration: InputDecoration(
//                     labelText: 'Enter password',
//                     labelStyle: TextStyle(
//                         color: Colors.grey, fontSize: 10.sp),
//                     enabledBorder: const UnderlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Colors.grey,
//                         width: 1.0,
//                       ),
//                     ),
//                     focusedBorder: const UnderlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Colors.grey,
//                         width: 1.0,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//     ),);
//   }
// }
