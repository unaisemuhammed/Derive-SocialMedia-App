import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:tripers/colors.dart' as colors;

import '../../widgets.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.backGround,
      appBar: AppBar(
        title:  SizedBox(
          height: 7.h,
          width: 100.w,
          child: TextField(
            textAlign: TextAlign.start,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                        color: Colors.black
                    )
                ) ,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                filled: true,
                hintStyle: GoogleFonts.roboto(
                    color: colors.subText, fontSize: 12.sp),
                hintText: "Search",
                fillColor: Colors.white),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        backgroundColor: colors.backGround,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return listTile(
                'unys._',
                'Yes,I was there before i visit dubai',
                'assets/images/user.jpeg',
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      '3:49',
                      style: TextStyle(color: colors.borderGrey),
                    ),
                    Container(
                      width: 25,
                      height: 25,
                      child: const Center(
                          child: Text(
                        '25',
                        style: TextStyle(color: Colors.white),
                      )),
                      decoration: const BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
