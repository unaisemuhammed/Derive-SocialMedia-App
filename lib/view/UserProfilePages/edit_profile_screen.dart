import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:tripers/colors.dart' as colors;
import '../../widgets.dart';
import '../home_screen.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.backGround,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 100.w,
                height: 40.h,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      child: Container(
                        alignment: Alignment.topRight,
                        width: 100.w,
                        height: 25.h,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: AssetImage('assets/images/cover.jpg'),
                          ),
                        ),
                        child: IconButton(
                          icon: const Icon(
                            FontAwesomeIcons.camera,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Positioned(
                      top: 13.h,
                      child: SizedBox(
                        width: 100.w,
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 62.sp,
                              backgroundColor: Colors.white,
                              child: Stack(
                                children: [
                                  CircleAvatar(
                                    radius: 60.sp,
                                    backgroundImage: const AssetImage(
                                      'assets/images/user.jpeg',
                                    ),
                                  ),
                                  Positioned(
                                    top: 15.h,
                                    right: 0,
                                    child: Container(
                                      width: 10.w,
                                      height: 10.w,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: colors.backGroundGrey,
                                              width: .5.w),
                                          color: colors.backGround,
                                          shape: BoxShape.circle),
                                      child: Center(
                                        child: Icon(
                                          Icons.add,
                                          size: 20.sp,
                                        ),
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
                  ],
                ),
              ),
             Padding(
               padding: const EdgeInsets.only(left: 15,right: 15),
               child: Column(
                 children: [
                   TextField(
                     style: TextStyle(color: Colors.black, fontSize: 15.sp),
                     decoration: InputDecoration(
                       labelText: 'Name',
                       labelStyle: const TextStyle(color: Colors.grey),
                       enabledBorder: UnderlineInputBorder(
                         borderSide: BorderSide(
                           color: Colors.grey,
                           width: .8.sp,
                         ),
                       ),
                       focusedBorder: UnderlineInputBorder(
                         borderSide: BorderSide(
                           color: Colors.grey,
                           width: .8.sp,
                         ),
                       ),
                     ),
                   ),
                   SizedBox(
                     height: 2.h,
                   ),
                   TextField(
                     style: TextStyle(color: Colors.black, fontSize: 15.sp),
                     decoration: InputDecoration(
                       labelText: 'Username',
                       labelStyle: const TextStyle(
                         color: Colors.grey,
                       ),
                       enabledBorder: UnderlineInputBorder(
                         borderSide: BorderSide(
                           color: Colors.grey,
                           width: .8.sp,
                         ),
                       ),
                       focusedBorder: UnderlineInputBorder(
                         borderSide: BorderSide(
                           color: Colors.grey,
                           width: .8.sp,
                         ),
                       ),
                     ),
                   ),
                   SizedBox(
                     height: 2.h,
                   ),
                   TextField(
                     style: TextStyle(color: Colors.black, fontSize: 15.sp),
                     decoration: InputDecoration(
                       labelText: 'About',
                       labelStyle: const TextStyle(
                         color: Colors.grey,
                       ),
                       enabledBorder: UnderlineInputBorder(
                         borderSide: BorderSide(
                           color: Colors.grey,
                           width: .8.sp,
                         ),
                       ),
                       focusedBorder: UnderlineInputBorder(
                         borderSide: BorderSide(
                           color: Colors.grey,
                           width: .8.sp,
                         ),
                       ),
                     ),
                   ),
                   SizedBox(
                     height: 10.h,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       elevatedButtons('Cancel',null,null, Colors.white, 40,
                           6, Colors.black),
                       elevatedButtons('Save', null,null, Colors.white, 40, 6,
                           Colors.black),
                     ],
                   ),
                 ],
               ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
