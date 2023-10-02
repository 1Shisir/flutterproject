import 'package:flutter/material.dart';
import 'package:flutterproject/src/constants/image_string.dart';
import 'package:flutterproject/src/constants/sizes.dart';
import 'package:flutterproject/src/constants/text_strings.dart';
import 'package:flutterproject/src/features/authenticaton/screens/login/widgets/login_header_widget.dart';
import 'package:get/get.dart';
import '../forgot_password_otp/otp_screen1.dart';

class ForgetPasswordPhoneScreen extends StatelessWidget {
  const ForgetPasswordPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(sDefaultSize),
            child: Column(
              children: [
                const SizedBox(
                  height: sDefaultSize * 4,
                ),
                const LoginHeaderWidget(
                  image: sForgetImage,
                  title: sForgetPassword,
                  subTitle: sForgetPhoneSubTitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30.0,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: sFormHeight,
                ),
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text(sPhoneno),
                          hintText: sPhoneno,
                          prefixIcon: Icon(Icons.numbers)),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              Get.to(() => const OTPScreen1());
                            },
                            child: const Text(sNext))),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
