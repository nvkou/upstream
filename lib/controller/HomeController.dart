import 'dart:developer';

import 'package:get/get.dart';

class HomeController extends GetxController{
  var lockswitch=0.obs;
  changeLock(){
    lockswitch.value=lockswitch.value==0?1:0;
    log("switch change to ${lockswitch.value}");
    refresh();
  }

}