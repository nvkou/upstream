import 'dart:developer';
import 'package:get/get.dart';
import 'package:upstream/pages/Home.dart';

GetMaterialApp init() {
  //do some stuff before create the app
  log('system before init');
  //then assemble the app
  return GetMaterialApp(
    initialRoute: '/',
    getPages: [
      root(),
    ],
  );

}

/// named the rout not the page
root()=>GetPage(name: '/', page: ()=>Home(),binding: HomeBinding());