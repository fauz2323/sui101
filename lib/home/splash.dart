import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sui101/home/splash_controller.dart';

class Splash extends StatelessWidget {
  SplashController splashController = Get.put(SplashController());
  Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: h * 25 / 100,
            ),
            Image.asset(
              'asset/logo.png',
              height: h * 30 / 100,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "S",
                  style: TextStyle(color: Color(0xffef2e46), fontSize: 40),
                ),
                Text(
                  "ui101",
                  style: TextStyle(fontSize: 40),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
