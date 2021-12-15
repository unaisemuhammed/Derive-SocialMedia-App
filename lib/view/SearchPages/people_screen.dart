import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tripers/colors.dart' as colors;
import 'package:tripers/widgets.dart';

class People extends StatelessWidget {
  const People({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.backGround,

      body: SafeArea(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return listTile(
                'unais._',
                'Visited:10+Countries',
                'assets/images/user.jpeg',
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.person_add_alt),
                ),
              );
            }),
      ),
    );
  }
}
