import 'package:flutter/material.dart';
import 'package:flutterproject/src/constants/colors.dart';
import 'package:flutterproject/src/constants/image_string.dart';
import 'package:flutterproject/src/constants/sizes.dart';
import 'package:flutterproject/src/constants/text_strings.dart';
import 'package:flutterproject/src/features/authenticaton/screens/login/login_screen.dart';
import 'package:flutterproject/src/features/authenticaton/screens/signup/signup_screen.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    var height = mediaQuery.size.height;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
        backgroundColor: isDarkMode ? sSecondaryColor : sPrimaryColor,
        body: Container(
          padding: const EdgeInsets.all(sDefaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                  image: const AssetImage(sWelcomeImage), height: height * 0.5),
              Column(
                children: [
                  Text(
                    sWelcomeText,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    sWelcomeSubText,
                    style: Theme.of(context).textTheme.labelLarge,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Get.to(() => const LoginScreen()),
                      child: Text(sLogin.toUpperCase()),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () => Get.to(const SignUpScreen()),
                        child: Text(sSignup.toUpperCase())),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
