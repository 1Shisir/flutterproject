import 'package:flutter/material.dart';
import 'package:flutterproject/src/common_widgets/form/form_header_widget.dart';
import 'package:flutterproject/src/constants/image_string.dart';
import 'package:flutterproject/src/constants/sizes.dart';
import 'package:flutterproject/src/constants/text_strings.dart';
import 'package:flutterproject/src/features/authenticaton/screens/signup/widgets/signup_for_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(sDefaultSize),
            child: Column(
              children: [
                const FormHeaderWidget(
                    image: sWelcomeImage,
                    title: sSignupTitle,
                    subTitle: sSignupSubtitle),
                const SignUpFormWidget(),
                Column(
                  children: [
                    const Text("OR"),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Image(
                          image: AssetImage(sGoogleLogo),
                          width: 20.0,
                        ),
                        label: Text(sLoginGoogle.toUpperCase()),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                              text: sAlreadyUser,
                              style: Theme.of(context).textTheme.bodyMedium),
                          TextSpan(text: sLogin.toUpperCase())
                        ]))),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
