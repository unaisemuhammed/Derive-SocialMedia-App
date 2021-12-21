import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:tripers/functions.dart';
import 'package:tripers/view/RegisterPages/signin_screen.dart';
import 'package:firebase_core/firebase_core.dart';



void main() async{
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            tabBarTheme:  const TabBarTheme(
                unselectedLabelColor: Colors.grey,
                unselectedLabelStyle:
                TextStyle(fontSize: 16),
                labelStyle: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Title',
                    fontWeight: FontWeight.w500),
                labelColor: Colors.white,
                indicator: UnderlineTabIndicator( // color for indicator (underline)
                    borderSide: BorderSide(color: Colors.white),),),
          ),
          home: const SignIn(),
        );
      }
    );
  }
}