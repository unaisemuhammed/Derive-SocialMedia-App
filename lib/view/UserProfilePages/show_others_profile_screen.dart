import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:tripers/colors.dart' as colors;
import 'package:tripers/instance.dart';
import 'package:tripers/view/ChatPages/chat_screen.dart';
import 'package:tripers/view/ChatPages/chat_text.dart';
import 'package:tripers/view/following_screen.dart';
import '../../slider.dart';
import '../../widgets.dart';
import '../home_screen.dart';

class OthersProfile extends StatelessWidget {
  const OthersProfile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.backGround,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, _) {
          return [
            SliverList(
                delegate: SliverChildListDelegate([
              SizedBox(
                width: 100.w,
                height: 51.h,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      child: Container(
                        width: 100.w,
                        height: 25.h,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: AssetImage('assets/images/cover.jpg'),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 13.h,
                      child: SizedBox(
                        width: 100.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Text(
                                      '500',
                                      style: GoogleFonts.roboto(
                                          color: Colors.black,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Following",
                                      style: GoogleFonts.roboto(
                                          color: Colors.black,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                CircleAvatar(
                                  radius: 62.sp,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 60.sp,
                                    backgroundImage: const AssetImage(
                                      'assets/images/user.jpeg',
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Text(
                                      '1M',
                                      style: GoogleFonts.roboto(
                                          color: Colors.black,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Follower",
                                      style: GoogleFonts.roboto(
                                          color: Colors.black,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              'unys._',
                              style: GoogleFonts.roboto(
                                  color: colors.mainText,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Mohammed Unaise',
                              style: GoogleFonts.roboto(
                                  color: colors.mainText,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Moody,Floaty,Fire and Desire',
                              style: GoogleFonts.roboto(
                                  color: colors.subText,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ]))
          ];
        },
        body: Padding(
          padding: const EdgeInsets.only(right: 5, left: 5),
          child: Stack(
            children: [
              // GridView.builder(
              //   shrinkWrap: true,
              //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 3,
              //     crossAxisSpacing: 5.0,
              //     mainAxisSpacing: 5.0,
              //   ),
              //   itemCount: 100,
              //   itemBuilder: (context, index) {
              //     return Container(
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(5),
              //         image: DecorationImage(
              //           colorFilter: ColorFilter.mode(
              //               Colors.black.withOpacity(0.5), BlendMode.darken),
              //           fit: BoxFit.fill,
              //           image: const AssetImage('assets/images/Paris.jpg'),
              //         ),
              //       ),
              //       child: Center(
              //         child: Text(
              //           'Paris',
              //           style: GoogleFonts.openSans(
              //               color: Colors.white,
              //               fontSize: 13.sp,
              //               fontWeight: FontWeight.w600),
              //         ),
              //       ),
              //     );
              //   },
              // ),

              ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () =>
                              Get.to(const SliderScreenForBolgAndPost()),
                          child: Container(
                            height: 25.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.4),
                                    BlendMode.darken),
                                fit: BoxFit.fill,
                                image:
                                    const AssetImage('assets/images/Paris.jpg'),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Paris',
                                style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                      ],
                    );
                  }),
              Positioned(
                bottom: 1.h,
                child: SizedBox(
                  width: 100.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      elevatedButtons('Message', null, const Chat(),
                          Colors.white, 40, 5, Colors.black),
                      GetBuilder(
                        init: totalController,
                        builder: (controller) {
                          return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape:  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              primary:  totalController.blueButton,
                              minimumSize:  Size(40.w, 5.h),
                            ),
                            onPressed: () {
                              if(totalController.followNum==0){
                                 totalController.text='Follow';
                                 totalController.blueButton=colors.blueButton;
                                totalController.followNum=1;
                              }else{
                                totalController.text='Following';
                                totalController.followNum=0;
                                totalController.blueButton=colors.backGroundGrey;
                              }
                              totalController.update();
                            },
                            child:  Text(totalController.text,style: const TextStyle(color: Colors.white),),
                          );
                        }
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
}
