import 'package:flutter/material.dart';
import 'package:flutterproject/src/constants/sizes.dart';
import 'package:flutterproject/src/constants/text_strings.dart';
import 'package:flutterproject/src/features/authenticaton/screens/forgot_password/forgot_password_mail/forgot_password_mail.dart';
import 'package:flutterproject/src/features/authenticaton/screens/forgot_password/forgot_password_options/forgot_password_btn_widget.dart';
import 'package:flutterproject/src/features/authenticaton/screens/forgot_password/forgot_password_phone/forgot_password_phone.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalButtomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(sDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              sForgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              sForgetPasswordSubTitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: sDefaultSize,
            ),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mail_outline_rounded,
              title: sEmail,
              subTitle: sResetViaEmail,
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const ForgetPasswordMailScreen());
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              title: sPhoneno,
              subTitle: sResetViaPhone,
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const ForgetPasswordPhoneScreen());
              },
            )
          ],
        ),
      ),
    );
  }
}
