
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:tripers/colors.dart' as colors;
import 'package:tripers/model/post/post_class_model.dart';
import 'package:tripers/view/ChatPages/chat_screen.dart';
import 'package:tripers/slider.dart';
import 'package:tripers/view/notification_screen.dart';
import 'package:tripers/view/UserProfilePages/user_profile_screen.dart';
import 'package:tripers/widgets.dart';

import '../instance.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.backGround,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Dérive',
          style: GoogleFonts.iceberg(color: colors.mainText, fontSize: 25.sp),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(const SliderScreenForSearch());
            },
            icon: const Icon(
              FontAwesomeIcons.search,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () => Get.to(const ChatScreen()),
            icon: const Icon(
              Icons.chat_bubble,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {
              Get.to(const Notifications());
            },
            icon: const Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ),
          IconButton(
              onPressed: () {
                Get.to(const UserProfile());
              },
              icon: const CircleAvatar(
                  // backgroundImage: NetworkImage(authenticationController.googleProfilePhotoController.toString()),
                  ),),
        ],
        backgroundColor: colors.backGround,
        elevation: 0,
      ),
      body: SafeArea(
        child: FutureBuilder<List<PostGet>>(
          future: postController.futurePost,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return homePosts(snapshot, index);
                },
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
