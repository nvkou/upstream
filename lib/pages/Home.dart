import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upstream/controller/HomeController.dart';
import 'package:upstream/pages/sencondpage.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final  c=Get.put(HomeController());


    return Container(
      child: Scaffold(
        appBar: AppBar(title: Obx(()=>Text("lock status is ${c.lockswitch}")),),
        body: Column(
          children: [
            Center(
                child: ElevatedButton(
                  child: Text("another page"),
                  onPressed: ()=>Get.to(secondpage()),
                )
            ),
            Center(
              child: ElevatedButton(
                child: Text("click to change"),
                onPressed: ()=>c.changeLock(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Home();

}

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }

}