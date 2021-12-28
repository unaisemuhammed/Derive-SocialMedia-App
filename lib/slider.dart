import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:tripers/colors.dart' as colors;
import 'package:tripers/view/SearchPages/people_screen.dart';
import 'package:tripers/view/SearchPages/search_posts_screen.dart';
import 'package:tripers/view/UserProfilePages/BlogAndPost/users_blog_screen.dart';
import 'package:tripers/view/UserProfilePages/BlogAndPost/users_posts_screen.dart';
import 'package:tripers/view/UserProfilePages/NewBlogAndPost/_newblog.dart';
import 'package:tripers/view/UserProfilePages/NewBlogAndPost/_newpost.dart';
import 'package:tripers/view/followers_screen.dart';
import 'package:tripers/view/following_screen.dart';
import 'package:tripers/view/home_screen.dart';

import 'instance.dart';
import 'model/post/post_api_function.dart';
import 'view/SearchPages/groups_screen.dart';


//Search
var searchPages = [const People(), const Groups(), const Posts(),];
class SliderScreenForSearch extends StatelessWidget {
  const SliderScreenForSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          title: SizedBox(
            height: 7.h,
            width: 100.w,
            child: TextField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.black)),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  filled: true,
                  hintStyle: GoogleFonts.ubuntuMono(
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
          bottom: const TabBar(
            dragStartBehavior: DragStartBehavior.down,
            tabs: [
              Tab(
                text: 'People',
              ),
              Tab(
                text: 'Groups',
              ),
              Tab(
                text: 'Posts',
              ),
            ],
            indicator: UnderlineTabIndicator(
              // color for indicator (underline)
              borderSide: BorderSide(color: Colors.grey),
            ),
            labelColor: Colors.black,
            indicatorColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: TextStyle(fontSize: 15, fontFamily: 'Title'),
            labelStyle: TextStyle(
                fontSize: 15, fontFamily: 'Title', fontWeight: FontWeight.w500),
          ),
        ),
        body: TabBarView(
          children: searchPages,
        ),
      ),
    );
  }
}

//Blog And Post
var blogAndPostPages = [UsersBlog(), const UserPosts()];
class SliderScreenForBolgAndPost extends StatelessWidget {
  const SliderScreenForBolgAndPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 2.w),
                child: Row(
                  children: [
                    GestureDetector(
                      child: const Padding(
                        padding: EdgeInsets.all(2.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 22,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/user.jpeg'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: .1.h,
              ),
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'unys._',
                      style: GoogleFonts.openSans(
                          color: colors.mainText,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'paris is the one of the best visited \nplace of mine.',
                      style: GoogleFonts.ubuntuMono(
                          color: colors.subText,
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
          bottom: const TabBar(
            dragStartBehavior: DragStartBehavior.down,
            tabs: [
              Tab(
                text: 'Blog',
              ),
              Tab(
                text: 'Posts',
              ),
            ],
            indicator: UnderlineTabIndicator(
              // color for indicator (underline)
              borderSide: BorderSide(color: Colors.grey),
            ),
            labelColor: Colors.black,
            indicatorColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: TextStyle(fontSize: 15, fontFamily: 'Title'),
            labelStyle: TextStyle(
                fontSize: 15, fontFamily: 'Title', fontWeight: FontWeight.w500),
          ),
        ),
        body: TabBarView(
          children: blogAndPostPages,
        ),
      ),
    );
  }
}

//Follower And Following
var followerAndFollowerPages = [const Following(),const Follower(), ];
class FollowAndFollowers extends StatefulWidget {
    final index;
   FollowAndFollowers({Key? key,required this.index}) : super(key: key);

  @override
  State<FollowAndFollowers> createState() => _FollowAndFollowersState();
}

class _FollowAndFollowersState extends State<FollowAndFollowers>
    with SingleTickerProviderStateMixin {
  late TabController followController;

  @override
  void initState() {
    followController = TabController(length: 2, vsync: this);
    followController.animateTo(widget.index);
    super.initState();
  }

  @override
  void dispose() {
    followController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'unys._',
          style: GoogleFonts.openSans(
              color: colors.mainText,
              fontSize: 13.sp,
              fontWeight: FontWeight.w600),
        ),
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
        bottom:  TabBar(
          dragStartBehavior: DragStartBehavior.down,
          controller: followController,
          tabs: const [
            Tab(
              text: 'Following',
            ),
            Tab(
              text: 'Followers',
            ),
          ],
          indicator: const UnderlineTabIndicator(
            // color for indicator (underline)
            borderSide: BorderSide(color: Colors.grey),
          ),
          labelColor: Colors.black,
          indicatorColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          unselectedLabelStyle: const TextStyle(fontSize: 15, fontFamily: 'Title'),
          labelStyle: const TextStyle(
              fontSize: 15, fontFamily: 'Title', fontWeight: FontWeight.w500),
        ),
      ),
      body: TabBarView(
        controller:followController,
        children: followerAndFollowerPages,
      ),
    );
  }
}

//NewBlogAndPost
var newBlogAndPostPages = [NewBlog(), const NewPost()];
class NewBlogAndPost extends StatelessWidget {
  const NewBlogAndPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: [TextButton(onPressed: ()async{
            Get.offAll(const HomePage());
          }, child: const Text('Share'),),],
          title: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 2.w),
                child: Row(
                  children: [
                    GestureDetector(
                      child: const Padding(
                        padding: EdgeInsets.all(2.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 22,
                          child: CircleAvatar(
                            backgroundImage:
                            AssetImage('assets/images/user.jpeg'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: .1.h,
              ),
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'unys._',
                      style: GoogleFonts.openSans(
                          color: colors.mainText,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'paris is the one of the best visited \nplace of mine.',
                      style: GoogleFonts.ubuntuMono(
                          color: colors.subText,
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
          bottom: const TabBar(
            dragStartBehavior: DragStartBehavior.down,
            tabs: [
              Tab(
                text: 'Blog',
              ),
              Tab(
                text: 'Posts',
              ),
            ],
            indicator: UnderlineTabIndicator(
              // color for indicator (underline)
              borderSide: BorderSide(color: Colors.grey),
            ),
            labelColor: Colors.black,
            indicatorColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: TextStyle(fontSize: 15, fontFamily: 'Title'),
            labelStyle: TextStyle(
                fontSize: 15, fontFamily: 'Title', fontWeight: FontWeight.w500),
          ),
        ),
        body: TabBarView(
          children: newBlogAndPostPages,
        ),
      ),
    );
  }
}
