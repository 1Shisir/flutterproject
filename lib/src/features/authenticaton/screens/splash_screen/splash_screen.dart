// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutterproject/src/constants/colors.dart';
import 'package:flutterproject/src/constants/image_string.dart';
import 'package:flutterproject/src/constants/sizes.dart';
import 'package:flutterproject/src/constants/text_strings.dart';
import 'package:flutterproject/src/features/authenticaton/controllers/splash_screen_controller.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: splashController.animate.value ? 0 : -30,
                left: splashController.animate.value ? 0 : -30,
                child: Container(
                  height: 100,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(300),
                      color: sPrimaryColor),
                )),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 110,
              left: splashController.animate.value ? sDefaultSize : -80,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(sAppName,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    Text(sAppTagLine,
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w400))
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splashController.animate.value ? 275 : 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: const Image(
                  image: AssetImage(sSplashImage),
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              bottom: splashController.animate.value ? 40 : 0,
              right: 5,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: Container(
                  width: sSplashContainerSize,
                  height: 110,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: sPrimaryColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
