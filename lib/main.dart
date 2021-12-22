import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sui101/home/splash.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    home: Splash(),
  ));
}
