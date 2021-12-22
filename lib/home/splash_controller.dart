import 'dart:async';

import 'package:get/get.dart';
import 'package:sui101/home/home.dart';

class SplashController extends GetxController {
  initial() {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Get.offAll(() => Home());
    });
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initial();
  }
}
