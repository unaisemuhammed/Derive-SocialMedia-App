import 'package:flutter/material.dart';
import 'package:tripers/colors.dart' as colors;

class Posts extends StatelessWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.backGround,

      body: SafeArea(
        child: Container(),
        // child: ListView.builder(
        //     itemCount: 5,
        //     itemBuilder: (context, index) {
        //       return homePosts();
        //     }),
      ),
    );
  }
}
