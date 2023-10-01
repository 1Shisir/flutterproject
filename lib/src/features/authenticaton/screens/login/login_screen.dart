import 'package:flutter/material.dart';
import 'package:flutterproject/src/constants/image_string.dart';
import 'package:flutterproject/src/constants/sizes.dart';
import 'package:flutterproject/src/constants/text_strings.dart';
import 'package:flutterproject/src/features/authenticaton/screens/login/widgets/login_footer_widget.dart';
import 'package:flutterproject/src/features/authenticaton/screens/login/widgets/login_form_widget.dart';
import 'package:flutterproject/src/features/authenticaton/screens/login/widgets/login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var mediaQuery = MediaQuery.of(context);
    // var brightness = mediaQuery.platformBrightness;
    // final isDarkMode = brightness == Brightness.dark;
    // final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
          //backgroundColor: isDarkMode ? sSecondaryColor : sPrimaryColor,
          body: SingleChildScrollView(
              child: Container(
        padding: const EdgeInsets.all(sDefaultSize),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LoginHeaderWidget(
              image: sWelcomeImage,
              title: sLoginTitle,
              subTitle: sLoginSubTitle,
            ),
            LoginForm(),
            LoginFooterWidget()
          ],
        ),
      ))),
    );
  }
}
