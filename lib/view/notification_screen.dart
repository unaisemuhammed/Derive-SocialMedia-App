import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:tripers/colors.dart' as colors;
import 'package:tripers/widgets.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.backGround,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: colors.backGround,
        title: Text(
          'Activity',
          style: GoogleFonts.roboto(
            color: colors.mainText,
            fontSize: 20.sp,
          ),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext cntx, int index) {
              return listTile(
                'sarang',
                'sarang liked your post',
                'assets/images/cover.jpg',
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.arrowCircleRight,
                    color: colors.storyColor,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
