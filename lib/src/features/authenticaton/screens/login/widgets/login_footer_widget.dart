import 'package:flutter/material.dart';
import 'package:flutterproject/src/constants/image_string.dart';
import 'package:flutterproject/src/constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(
              image: AssetImage(sGoogleLogo),
              width: 20,
            ),
            onPressed: () {},
            label: const Text(sLoginGoogle),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
            onPressed: () {},
            child: Text.rich(TextSpan(
                text: sNotUser,
                style: Theme.of(context).textTheme.bodyMedium,
                children: const [
                  TextSpan(text: sSignup, style: TextStyle(color: Colors.blue))
                ]))),
      ],
    );
  }
}
