import 'package:flutter/material.dart';
import 'package:tripers/api.dart';
import 'package:tripers/instance.dart';

import 'model/post/post_api_function.dart';

class Fun extends StatelessWidget {
  const Fun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
          },
          child: const Text('Press'),
        ),
      ),
    );
  }
}
