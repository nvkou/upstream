import 'package:flutter/material.dart';
import 'package:get/get.dart';


class secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final c=Get.find();
    return Container(
        child: Scaffold(
    body: Center(child: Text("now status is ${c.lockswitch}"),),
    ),
    );
  }
}
