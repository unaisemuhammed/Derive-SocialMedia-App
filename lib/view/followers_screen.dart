import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tripers/colors.dart' as colors;

class Follower extends StatelessWidget {
  const Follower({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.backGround,
      body: SafeArea(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  child: const Icon(
                    Icons.person,
                    size: 50,
                  ),
                  decoration: const BoxDecoration(
                    color: colors.backGroundGrey,
                    shape: BoxShape.circle,
                    // border: Border.all(),
                  ),
                ),
                title: const Text('unys._'),
                subtitle: const Text('kerala,dubai,paris,usa,barcelona'),
                trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: colors.borderGrey),
                    shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    primary:  Colors.white,
                    minimumSize: const Size(80, 25),
                    maximumSize: const Size(100, 25),
                  ),
                  onPressed: () {},
                  child: const Text('Remove',style: TextStyle(color: Colors.black),),
                ),
              );
            }),
      ),
    );
  }
}
