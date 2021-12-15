import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tripers/colors.dart' as colors;
import 'package:tripers/widgets.dart';

class Groups extends StatelessWidget {
  const Groups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.backGround,
      body: SafeArea(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return listTile(
                'Trip to Paris 1/2/2022',
                '500+ Members',
                'assets/images/user.jpeg',
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.group_add),
                ),
              );
            }),
      ),
    );
  }
}
